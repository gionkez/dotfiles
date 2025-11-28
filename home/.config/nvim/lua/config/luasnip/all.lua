local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
return {
	-- text
	s("(", {t("("), i(1), t(")")}),
	s("[", {t("["), i(1), t("]")}),
	s("{", {t("{"), i(1), t("}")}),
	s("'", {t("'"), i(1), t("'")}),
	s("\"", {t("\""), i(1), t("\"")}),
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
	s("acs", {t("\\acs{"), i(1), t("}")}),
	s("acf", {t("\\acf{"), i(1), t("}")}),
	s("noi", {t("\\noindent")}),
	s("sep", {t("\\separator")}),
	s("img", {t("\\img{"), i(2), t("}{"), i(1), t("}{"), i(3), t("}")}),
	s("mdimg", {t("\\mdimg{"), i(2), t("}{"), i(1), t("}{"), i(3), t("}")}),
	s("alg", {t("\\alg{"), i(2), t("}{"), i(1), t("}")}),
	s("mdalg", {t("\\mdalg{"), i(2), t("}{"), i(1), t("}")}),
	s("incode", {t("\\input"), i(1), t("{"), i(3), t("}{"), i(2), t("}")}),
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
	s("{}", {t("\\left\\{"), i(1), t("\\right\\}")}),
	s("||", {t("\\left|"), i(1), t("\\right|")}),
	s("@al", {t("\\alpha")}),
	s("@be", {t("\\beta")}),
	s("@ga", {t("\\gamma")}),
	s("@Ga", {t("\\Gamma")}),
	s("@de", {t("\\delta")}),
	s("@De", {t("\\Delta")}),
	s("@ep", {t("\\varepsilon")}),
	s("@ze", {t("\\zeta")}),
	s("@et", {t("\\eta")}),
	s("@th", {t("\\vartheta")}),
	s("@Th", {t("\\Theta")}),
	s("@io", {t("\\iota")}),
	s("@ka", {t("\\kappa")}),
	s("@la", {t("\\lambda")}),
	s("@La", {t("\\Lambda")}),
	s("@mu", {t("\\mu")}),
	s("@nu", {t("\\nu")}),
	s("@xi", {t("\\xi")}),
	s("@Xi", {t("\\Xi")}),
	s("@pi", {t("\\pi")}),
	s("@rh", {t("\\rho")}),
	s("@si", {t("\\sigma")}),
	s("@Si", {t("\\Sigma")}),
	s("@ta", {t("\\tau")}),
	s("@up", {t("\\upsilon")}),
	s("@Up", {t("\\Upsilon")}),
	s("@ph", {t("\\phi")}),
	s("@Ph", {t("\\Phi")}),
	s("@ch", {t("\\chi")}),
	s("@ps", {t("\\psi")}),
	s("@Ps", {t("\\Psi")}),
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
						\textbf{\textsc{<>}} & \textbf{\textsc{}}\\
						\midrule
						 & \\
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
				\end{minipage}\hfil
				\begin{minipage}[h!tbp]{.<>\textwidth}
					\centering
					<>
				\end{minipage}\\[3mm]
			]], {i(1), i(3), i(2), i(4)}
		)
	),
	s("eq",
		fmta(
			[[
				\begin{equation*}
					<>
				\end{equation*}
			]], {i(1)}
		)
	),
	s("eqb",
		fmta(
			[[
				\begin{equation*}
					\boxed{<>}
				\end{equation*}
			]], {i(1)}
		)
	),
	s("itm",
		fmta(
			[[
				\begin{itemize}
					\item[--] <>
				\end{itemize}
			]], {i(1)}
		)
	),
	s("enm",
		fmta(
			[[
				\begin{enumerate}
					\item <>
				\end{enumerate}
			]], {i(1)}
		)
	),
	s("ins",
		fmta(
			[[
				\begin{<>}[<>]
					<>
				\end{<>}
			]], {i(1), i(3), i(2), rep(1)}
		)
	),
	s("plt",
		fmta(
			[[
				\begin{tikzpicture}
					\centering
					\begin{axis}[
						scale only axis,
						axis lines=left,
						width=5cm, height=4cm,
						xmin=0, xmax=<>, ymin=0, ymax=<>,
						xlabel={<>}, ylabel={<>},
						xlabel near ticks, ylabel near ticks,
						xtick=\empty, ytick=\empty,
						legend entries={<>}
					]
						\addplot[NavyBlue, smooth, thick, domain=0:<>] {};
					\end{axis}
				\end{tikzpicture}
			]], {i(1), i(2), i(3), i(4), i(5), rep(1)}
		)
	)
}
