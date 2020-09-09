{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

<footer class="footer-library container immersion_footer" id="immersions_content_footer">
    <div class="row">
        <div class="column footer-library_left" >
            <div>Main Library Information Desk</div>
            <div>(217) 333 -2290</div>
            <div>1408 W. Gregory Dr.</div>
            <div>Urbana, IL 61801</div>
        </div>

        <div class="column ">
            <div class="footer-library_i-mark">
                <img id="i-mark" usemap="#lib-shared-footer-wordmark-online__map__small" src="{$baseUrl}/templates/images/structure/009_LIBRA_OrangeI_Vert_RGB.png" alt="University of Illinois Library">

                <map name="lib-shared-footer-wordmark-online__map__small">
                    <area shape="rect" coords="0,0,200,40" href="https://illinois.edu" alt="Block I">
                    <area shape="rect" coords="0,50,300,100" href="https://www.library.illinois.edu" alt="Illinois Library">
                </map>


            </div>
            <div class="footer-library_copyright text-center" role="img" aria-label="Creative Commons License: BY NC 4.0">
                <img id="cc_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/cc.svg">
                <img id="by_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/by.svg">
                <img id="nc_image" src="{$baseUrl}/templates/images/structure/cc-icons-svg/nc.svg">





            </div>

        </div>

        <div class="column footer-library_right">
            <div>
                <ul>
                    <li>
                        <a href="https://www.vpaa.uillinois.edu/resources/web_privacy">Privacy Policy</a>
                    </li>
                    <li>
                        <a href="https://guides.library.illinois.edu/usersdisabilities">Accessibility</a>

                    </li>
                    <li>
                        <a href="https://www.library.illinois.edu/sc/">Scholarly Commons</a>
                    </li>
                    <li>
                        <a href="https://www.library.illinois.edu/staff/">Library Staff Website</a>

                    </li>

                </ul>
            </div>

        </div>
</footer>


{* Login modal *}
{if $requestedOp|escape != "register"}
	<div id="loginModal" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					{include file="frontend/components/loginForm.tpl" formType = "loginModal"}
				</div>
			</div>
		</div>
	</div>
{/if}

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}

</body>
</html>
