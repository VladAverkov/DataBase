CREATE PROCEDURE project.update_salary(id INTEGER, new_salary NUMERIC)
    AS $$
    BEGIN
        UPDATE project.employee SET salary = new_salary WHERE CAST (empl_id as INTEGER) = id;
    END;
$$ LANGUAGE plpgsql;


CREATE PROCEDURE project.update_discount_coeff(id INTEGER, new_discount_coeff NUMERIC)
    AS $$
    BEGIN
        UPDATE project.client SET discount_coeff = new_discount_coeff WHERE CAST (client_id as INTEGER) = id;
    END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION project.add_new_transport()
    RETURNS TRIGGER AS $$
    BEGIN
        if NEW."TYPE" = 'truck' or NEW."TYPE" = 'car' then
            INSERT INTO project.transport_stuff VALUES (7, NEW.transport_id, 'driver');
        end if;
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger1 BEFORE INSERT
    ON project.TRANSPORT
   FOR EACH ROW EXECUTE PROCEDURE project.add_new_transport();


CREATE FUNCTION project.add_new_stock()
    RETURNS TRIGGER AS $$
    BEGIN
        INSERT INTO project.stock_stuff VALUES (3, NEW.stock_id, 'boss of the gym');
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger2 BEFORE INSERT
    ON project.stock
   FOR EACH ROW EXECUTE PROCEDURE project.add_new_stock();
