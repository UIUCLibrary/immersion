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
{if $hasSidebar}
<footer class="main-footer" id="immersion_content_footer">
        <div class="container">
                        <div class="sidebar_wrapper row">
                                {call_hook name="Templates::Common::Sidebar"}
                        </div>                          
                        <hr>                                    
                <div class="row">                                       
                        {if $pageFooter}
                                <div class="col-md-8">
                                        {$pageFooter}
                                </div>
                        {/if}
                </div>
        </div>
</footer>
{/if}

<footer class="footer-library" role="contentinfo">


                                <div class="row">
                                                        <div class="column footer-library_right" style="text: white">
                                                                <p>ABOUT</p>
                                                                <nav>
                                                                        <ul>
                                                                                <li><a href="https://iopn.library.illinois.edu/iopn-mission/">About IOPN</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/advisory-board/">Advisory Board</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/policies/">Policies</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/news/">IOPN News</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/contact/">Contact</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/policies/#accessibility">Accessibility</a></li>
                                                                        </ul>
                                                                </nav>

                                                        </div>
                                                        <div class="column footer-library_right">
                                                                <p>PUBLISHING WITHOUT WALLS</p><p>
                                                                </p><nav>
                                                                        <ul>
                                                                                <li><a href="https://iopn.library.illinois.edu/publishing-without-walls/">About PWW</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/books/pww/catalog">PWW Catalog</a></li>
                                                                                <li><a href="https://pww.afro.illinois.edu">AFRO-PWW Project</a></li>

                                                                        </ul>
                                                                </nav>


                                                        </div>
                                                        <div class="column footer-library_right">
                                                                <p>WINDSOR &amp; DOWNS</p>
                                                                <nav>
                                                                        <ul>
                                                                                <li><a href="https://iopn.library.illinois.edu/windsor-downs-press/">About Windsor and Downs</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/books/windsor-downs/catalog">Windsor and Downs Catalog</a></li>
                                                                        </ul>
                                                                </nav>


                                                        </div>

                                                        <div class="column footer-library_right">
                                                                <p>IOPN JOURNALS</p>
                                                                <nav>
                                                                        <ul>
                                                                                <li><a href="https://iopn.library.illinois.edu/iopn-journals/">About IOPN Journals</a></li>
                                                                                <li><a href="https://iopn.library.illinois.edu/journals/">IOPN Journals Catalog</a></li>
                                                                        </ul>
                                                                </nav>
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
