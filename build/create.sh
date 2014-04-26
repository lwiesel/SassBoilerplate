# Script parameters
SCRIPT_PATH="`dirname \"$0\"`"
ROOT_PATH="${SCRIPT_PATH}/.."
EXPORT_PATH="${ROOT_PATH}/sass/quarks/html_elements"
REF_FILE="_all_quarks.scss"
HEADER_TEMPLATE="_header.template"
ELEMENT_TEMPLATE="_element.template"

# Console colors
GREEN="\\033[1;32m"
NORMAL="\\033[0;39m"
RED="\\033[1;31m"
PINK="\\033[1;35m"
BLUE="\\033[1;34m"
WHITE="\\033[0;02m"
LIGHTWHITE="\\033[1;08m"
YELLOW="\\033[1;33m"
CYAN="\\033[1;36m"

# Setting of the HTML quarks generation
QUARKS_FILES+=("a") ; a_elements=("a")
QUARKS_FILES+=("abbr") ; abbr_elements=("abbr")
QUARKS_FILES+=("address") ; address_elements=("address")
QUARKS_FILES+=("area") ; area_elements=("area")
QUARKS_FILES+=("article") ; article_elements=("article")
QUARKS_FILES+=("aside") ; aside_elements=("aside")
QUARKS_FILES+=("audio") ; audio_elements=("audio")
QUARKS_FILES+=("b") ; b_elements=("b")
QUARKS_FILES+=("bdi") ; bdi_elements=("bdi")
QUARKS_FILES+=("bdo") ; bdo_elements=("bdo")
QUARKS_FILES+=("blockquote") ; blockquote_elements=("blockquote")
QUARKS_FILES+=("body") ; body_elements=("body")
QUARKS_FILES+=("br") ; br_elements=("br")
QUARKS_FILES+=("button") ; button_elements=("button")
QUARKS_FILES+=("canvas") ; canvas_elements=("canvas")
QUARKS_FILES+=("caption") ; caption_elements=("caption")
QUARKS_FILES+=("cite") ; cite_elements=("cite")
QUARKS_FILES+=("code") ; code_elements=("code")
QUARKS_FILES+=("col") ; col_elements=("col")
QUARKS_FILES+=("colgroup") ; colgroup_elements=("colgroup")
QUARKS_FILES+=("command") ; command_elements=("command")
QUARKS_FILES+=("datalist") ; datalist_elements=("datalist")
QUARKS_FILES+=("dd") ; dd_elements=("dd")
QUARKS_FILES+=("del") ; del_elements=("del")
QUARKS_FILES+=("details") ; details_elements=("details")
QUARKS_FILES+=("dfn") ; dfn_elements=("dfn")
QUARKS_FILES+=("div") ; div_elements=("div")
QUARKS_FILES+=("dl") ; dl_elements=("dl")
QUARKS_FILES+=("dt") ; dt_elements=("dt")
QUARKS_FILES+=("em") ; em_elements=("em")
QUARKS_FILES+=("embed") ; embed_elements=("embed")
QUARKS_FILES+=("fieldset") ; fieldset_elements=("fieldset")
QUARKS_FILES+=("figcaption") ; figcaption_elements=("figcaption")
QUARKS_FILES+=("figure") ; figure_elements=("figure")
QUARKS_FILES+=("footer") ; footer_elements=("footer")
QUARKS_FILES+=("form") ; form_elements=("form")
QUARKS_FILES+=("h") ; h_elements=("h1" "h2" "h3" "h4" "h5" "h6")
QUARKS_FILES+=("header") ; header_elements=("header")
QUARKS_FILES+=("hgroup") ; hgroup_elements=("hgroup")
QUARKS_FILES+=("hr") ; hr_elements=("hr")
QUARKS_FILES+=("html") ; html_elements=("html")
QUARKS_FILES+=("i") ; i_elements=("i")
QUARKS_FILES+=("iframe") ; iframe_elements=("iframe")
QUARKS_FILES+=("img") ; img_elements=("img")
QUARKS_FILES+=("input") ; input_elements=("input")
QUARKS_FILES+=("ins") ; ins_elements=("ins")
QUARKS_FILES+=("kbd") ; kbd_elements=("kbd")
QUARKS_FILES+=("keygen") ; keygen_elements=("keygen")
QUARKS_FILES+=("label") ; label_elements=("label")
QUARKS_FILES+=("legend") ; legend_elements=("legend")
QUARKS_FILES+=("li") ; li_elements=("li")
QUARKS_FILES+=("map") ; map_elements=("map")
QUARKS_FILES+=("mark") ; mark_elements=("mark")
QUARKS_FILES+=("menu") ; menu_elements=("menu")
QUARKS_FILES+=("meter") ; meter_elements=("meter")
QUARKS_FILES+=("nav") ; nav_elements=("nav")
QUARKS_FILES+=("noscript") ; noscript_elements=("noscript")
QUARKS_FILES+=("object") ; object_elements=("object")
QUARKS_FILES+=("ol") ; ol_elements=("ol")
QUARKS_FILES+=("optgroup") ; optgroup_elements=("optgroup")
QUARKS_FILES+=("option") ; option_elements=("option")
QUARKS_FILES+=("output") ; output_elements=("output")
QUARKS_FILES+=("p") ; p_elements=("p")
QUARKS_FILES+=("param") ; param_elements=("param")
QUARKS_FILES+=("pre") ; pre_elements=("pre")
QUARKS_FILES+=("progress") ; progress_elements=("progress")
QUARKS_FILES+=("q") ; q_elements=("q")
QUARKS_FILES+=("rp") ; rp_elements=("rp")
QUARKS_FILES+=("rt") ; rt_elements=("rt")
QUARKS_FILES+=("ruby") ; ruby_elements=("ruby")
QUARKS_FILES+=("s") ; s_elements=("s")
QUARKS_FILES+=("samp") ; samp_elements=("samp")
QUARKS_FILES+=("section") ; section_elements=("section")
QUARKS_FILES+=("select") ; select_elements=("select")
QUARKS_FILES+=("small") ; small_elements=("small")
QUARKS_FILES+=("source") ; source_elements=("source")
QUARKS_FILES+=("span") ; span_elements=("span")
QUARKS_FILES+=("strong") ; strong_elements=("strong")
QUARKS_FILES+=("sub_sup") ; sub_elements=("sub" "sup")
QUARKS_FILES+=("summary") ; summary_elements=("summary")
QUARKS_FILES+=("table") ; table_elements=("table")
QUARKS_FILES+=("tbody") ; tbody_elements=("tbody")
QUARKS_FILES+=("td") ; td_elements=("td")
QUARKS_FILES+=("textarea") ; textarea_elements=("textarea")
QUARKS_FILES+=("tfoot") ; tfoot_elements=("tfoot")
QUARKS_FILES+=("th") ; th_elements=("th")
QUARKS_FILES+=("thead") ; thead_elements=("thead")
QUARKS_FILES+=("time") ; time_elements=("time")
QUARKS_FILES+=("tr") ; tr_elements=("tr")
QUARKS_FILES+=("track") ; track_elements=("track")
QUARKS_FILES+=("u") ; u_elements=("u")
QUARKS_FILES+=("ul") ; ul_elements=("ul")
QUARKS_FILES+=("var") ; var_elements=("var")
QUARKS_FILES+=("video") ; video_elements=("video")
QUARKS_FILES+=("wbr") ; wbr_elements=("wbr")

# Files generation
for FILE in ${QUARKS_FILES[*]}
do
	# Console header
	echo ""
	echo -e "--- " "$CYAN" "${FILE}" " ---" "$NORMAL"

	# Get file elements
	ELEMENTS="${FILE}_elements[*]"

	# Replaces file content with the header
	if [ -f "${EXPORT_PATH}/_${FILE}.scss" ]
	then
	    MES="Updated _${FILE}.scss"
    else
    	MES="Created _${FILE}.scss"
	fi
	IFS=, ; sed -e "s;%FILE%;${FILE};g" -e "s;%ELEMENTS%;${!ELEMENTS};g" "${SCRIPT_PATH}/${HEADER_TEMPLATE}" > "${EXPORT_PATH}/_${FILE}.scss"
	echo "${MES}"

	# Adds each element
	for ELEMENT in ${!ELEMENTS}
	do
		sed -e "s;%ELEMENT%;${ELEMENT};g" "${SCRIPT_PATH}/${ELEMENT_TEMPLATE}" >> "${EXPORT_PATH}/_${FILE}.scss"
	done

	# Adds reference in main quarks file
	count=`egrep -ci "@import \"html_elements\_${FILE}.scss\"" "${ROOT_PATH}/sass/quarks/${REF_FILE}"`
	#echo "${count} references of _${FILE}.scss found in ${REF_FILE}"
	if [[ "$count" -eq 0 ]]; then
		echo "// @import \"html_elements\_${FILE}.scss\"" >> "${ROOT_PATH}/sass/quarks/${REF_FILE}"
		echo "Added reference to _${FILE}.scss in ${REF_FILE}"
	else
		echo "Reference to _${FILE}.scss already in ${REF_FILE}"
	fi
done