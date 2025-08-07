local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
return {
	-- text
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
	s("frac", {t("\\dfrac{"), i(1), t("}{"), i(2), t("}")}),
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
	s("env",
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
					\includegraphics[width=\textwidth]{<>}
					\caption{}
				\end{figure}
			]], {i(1)}
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
	)
}
