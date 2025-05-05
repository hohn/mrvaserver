/**
 * @name Print AST
 * @description Outputs a representation of a file's Abstract Syntax Tree. This
 *              query is used by the VS Code extension.
 * @id go/print-ast
 * @kind graph
 * @tags ide-contextual-queries/print-ast
 */

import go
import semmle.go.PrintAst

/**
 * A hook to customize the functions printed by this query.
 */
class Cfg extends PrintAstConfiguration {
  override predicate shouldPrintFunction(FuncDecl func) { this.shouldPrintFile(func.getFile()) }

  override predicate shouldPrintFile(File file) {
    file.getBaseName().matches("%main%")
  }

  override predicate shouldPrintComments(File file) { this.shouldPrintFile(file) }
}
