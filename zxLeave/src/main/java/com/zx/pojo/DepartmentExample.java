package com.zx.pojo;

import java.util.ArrayList;
import java.util.List;

public class DepartmentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DepartmentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDepartmentidIsNull() {
            addCriterion("DepartmentId is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentidIsNotNull() {
            addCriterion("DepartmentId is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentidEqualTo(Integer value) {
            addCriterion("DepartmentId =", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidNotEqualTo(Integer value) {
            addCriterion("DepartmentId <>", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidGreaterThan(Integer value) {
            addCriterion("DepartmentId >", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidGreaterThanOrEqualTo(Integer value) {
            addCriterion("DepartmentId >=", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidLessThan(Integer value) {
            addCriterion("DepartmentId <", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidLessThanOrEqualTo(Integer value) {
            addCriterion("DepartmentId <=", value, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidIn(List<Integer> values) {
            addCriterion("DepartmentId in", values, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidNotIn(List<Integer> values) {
            addCriterion("DepartmentId not in", values, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidBetween(Integer value1, Integer value2) {
            addCriterion("DepartmentId between", value1, value2, "departmentid");
            return (Criteria) this;
        }

        public Criteria andDepartmentidNotBetween(Integer value1, Integer value2) {
            addCriterion("DepartmentId not between", value1, value2, "departmentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameIsNull() {
            addCriterion("AbteilungName is null");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameIsNotNull() {
            addCriterion("AbteilungName is not null");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameEqualTo(String value) {
            addCriterion("AbteilungName =", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameNotEqualTo(String value) {
            addCriterion("AbteilungName <>", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameGreaterThan(String value) {
            addCriterion("AbteilungName >", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameGreaterThanOrEqualTo(String value) {
            addCriterion("AbteilungName >=", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameLessThan(String value) {
            addCriterion("AbteilungName <", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameLessThanOrEqualTo(String value) {
            addCriterion("AbteilungName <=", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameLike(String value) {
            addCriterion("AbteilungName like", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameNotLike(String value) {
            addCriterion("AbteilungName not like", value, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameIn(List<String> values) {
            addCriterion("AbteilungName in", values, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameNotIn(List<String> values) {
            addCriterion("AbteilungName not in", values, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameBetween(String value1, String value2) {
            addCriterion("AbteilungName between", value1, value2, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungnameNotBetween(String value1, String value2) {
            addCriterion("AbteilungName not between", value1, value2, "abteilungname");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidIsNull() {
            addCriterion("AbteilungParentId is null");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidIsNotNull() {
            addCriterion("AbteilungParentId is not null");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidEqualTo(Integer value) {
            addCriterion("AbteilungParentId =", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidNotEqualTo(Integer value) {
            addCriterion("AbteilungParentId <>", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidGreaterThan(Integer value) {
            addCriterion("AbteilungParentId >", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidGreaterThanOrEqualTo(Integer value) {
            addCriterion("AbteilungParentId >=", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidLessThan(Integer value) {
            addCriterion("AbteilungParentId <", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidLessThanOrEqualTo(Integer value) {
            addCriterion("AbteilungParentId <=", value, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidIn(List<Integer> values) {
            addCriterion("AbteilungParentId in", values, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidNotIn(List<Integer> values) {
            addCriterion("AbteilungParentId not in", values, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidBetween(Integer value1, Integer value2) {
            addCriterion("AbteilungParentId between", value1, value2, "abteilungparentid");
            return (Criteria) this;
        }

        public Criteria andAbteilungparentidNotBetween(Integer value1, Integer value2) {
            addCriterion("AbteilungParentId not between", value1, value2, "abteilungparentid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}