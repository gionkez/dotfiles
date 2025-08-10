local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
	-- text
	s("ch", {t("\\chapter{"), i(1), t("}")}),
	s("s", {t("\\section{"), i(1), t("}")}),
	s("ss", {t("\\subsection{"), i(1), t("}")}),
	s("sss", {t("\\subsubsection{"), i(1), t("}")}),
	s("ssss", {t("\\subsubsubsection{"), i(1), t("}")}),
	s("bf", {t("\\textbf{"), i(1), t("}")}),
	s("it", {t("\\textit{"), i(1), t("}")}),
	s("sf", {t("\\textsf{"), i(1), t("}")}),
	s("sc", {t("\\textsc{"), i(1), t("}")}),
	s("sl", {t("\\textsl{"), i(1), t("}")}),
	s("tt", {t("\\texttt{"), i(1), t("}")}),
	s("item", fmta("\\item[<>] <>", {i(1), i(2)})),
	-- math
	s("mb", {t("\\mathbb{"), i(1), t("}")}),
	s("mf", {t("\\mathbf{"), i(1), t("}")}),
	s("mi", {t("\\mathit{"), i(1), t("}")}),
	s("mk", {t("\\mathfrak{"), i(1), t("}")}),
	s("mc", {t("\\mathcal{"), i(1), t("}")}),
	s("mt", {t("\\mathtt{"), i(1), t("}")}),
	s("ms", {t("\\mathsf{"), i(1), t("}")}),
	s("frac", fmta("\\dfrac{<>}{<>}", {i(1), i(2)})),
	s("_", {t("_{"), i(1), t("}")}),
	s("^", {t("^{"), i(1), t("}")}),
	s("()", {t("\\left("), i(1), t("\\right)")}),
	s("[]", {t("\\left["), i(1), t("\\right]")}),
	s("{}", {t("\\left{"), i(1), t("\\right}")}),
	s("||", {t("\\left|"), i(1), t("\\right|")}),
	s("@al", {t("\\alpha")}),
	s("@be", {t("\\beta")}),
	s("@ga", {t("\\gamma")}),
	s("@de", {t("\\delta")}),
	s("@ep", {t("\\varepsilon")}),
	s("@et", {t("\\eta")}),
	s("@te", {t("\\vartheta")}),
	s("@la", {t("\\lambda")}),
	s("@mu", {t("\\mu")}),
	s("@nu", {t("\\nu")}),
	s("@xi", {t("\\xi")}),
	s("@pi", {t("\\pi")}),
	s("@rh", {t("\\rho")}),
	s("@si", {t("\\sigma")}),
	s("@ph", {t("\\varphi")}),
	s("@ps", {t("\\psi")}),
	s("@om", {t("\\omega")}),
	-- environments
	s("beg",
		fmta(
			[[
				\begin{<>}
					<>
				\end{<>}
			]], {i(1), i(2), rep(1)}
		)
	),
	s("fig",
		fmta(
			[[
				\begin{figure}[h!tbp]
					\centering
					\includegraphics[width=<>\textwidth]{<>}
					\caption{<>}
				\end{figure}
			]], {i(2), i(1), i(3)}
		)
	),
	s("tab",
		fmta(
			[[
				\begin{table}[h!tbp]
					\centering
					\caption{}
					\begin{tabular}{}
						\toprule
						\textbf{\textsc{<>}}
						\midrule
						\bottomrule
					\end{tabular}
				\end{table}
			]], {i(1)}
		)
	),
	s("min",
		fmta(
			[[
				\\[3mm]
				\begin{minipage}[h!tbp]{.<>\textwidth}
					\centering
					<>
				\end{minipage}\\[3mm]
			]], {i(1), i(2)}
		)
	)
}
