;; Grabs all the local variable declarations.  This is useful for scope
;; variable passing.  Which variables do we need to pass to the extracted
;; function?
(lexical_declaration
  (variable_declarator
    name: (_) @definition.local_name
    value: (_) @definition.local_value)
) @definition.local_declarator

;; grabs all the arguments that are passed into the function. Needed for
;; function extraction, 106.
((formal_parameters
  (required_parameter
    (identifier) @definition.function_argument)))
((formal_parameters
  (optional_parameter
    (identifier) @definition.function_argument)))
(for_in_statement
  left: (identifier) @definition.function_argument)

(program) @definition.block
(statement_block) @definition.block

(expression_statement) @definition.statement
(return_statement) @definition.statement
(if_statement) @definition.statement
(for_statement) @definition.statement
(do_statement) @definition.statement
(while_statement) @definition.statement
(lexical_declaration) @definition.statement
