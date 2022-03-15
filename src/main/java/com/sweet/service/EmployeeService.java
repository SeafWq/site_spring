package com.sweet.service;

import com.sweet.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();


    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public Employee removeEmployee(int id);
}
