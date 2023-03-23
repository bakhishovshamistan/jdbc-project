select * from EMPLOYEES;

select Workers.EMPLOYEE_ID, Workers.FIRST_NAME, Workers.LAST_NAME, Workers.MANAGER_ID, Managers.EMPLOYEE_ID, Managers.FIRST_NAME, Managers.LAST_NAME
from EMPLOYEES Workers join EMPLOYEES Managers
on Workers.MANAGER_ID = Managers.EMPLOYEE_ID;

select W.EMPLOYEE_ID, W.FIRST_NAME, W.LAST_NAME, W.MANAGER_ID, M.EMPLOYEE_ID, M.FIRST_NAME, M.LAST_NAME
from EMPLOYEES W LEFT join EMPLOYEES M
on W.MANAGER_ID = M.EMPLOYEE_ID
ORDER BY 1 ASC;