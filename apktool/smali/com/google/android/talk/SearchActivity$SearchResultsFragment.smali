.class public Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
.super Landroid/app/ListFragment;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResultsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"

.field private static final LOG_TAG:Ljava/lang/String; = "talk"


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mCountView:Landroid/widget/TextView;

.field private mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field private mLastActivatedView:Landroid/view/View;

.field private mMustRequeryCursor:Z

.field private mQueryHandler:Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;

.field private mQueryString:Ljava/lang/String;

.field private mSinglePane:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mMustRequeryCursor:Z

    .line 460
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;)Lcom/google/android/talk/GmailProviderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method private maybeRequery()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mMustRequeryCursor:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCursor()Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    .line 352
    .local v0, "conversationCursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mMustRequeryCursor:Z

    .line 354
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->becomeActiveNetworkCursor()V

    .line 355
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 358
    .end local v0    # "conversationCursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    :cond_0
    return-void
.end method

.method private openConversation(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 382
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCursor()Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    .line 383
    .local v0, "cursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    invoke-virtual {v0, p1}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->moveTo(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v4, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->setActivatedItem(I)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/SearchActivity;

    .line 387
    .local v2, "searchActivity":Lcom/google/android/talk/SearchActivity;
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getConversationId()J

    move-result-wide v4

    # invokes: Lcom/google/android/talk/SearchActivity;->setConversationId(J)V
    invoke-static {v2, v4, v5}, Lcom/google/android/talk/SearchActivity;->access$200(Lcom/google/android/talk/SearchActivity;J)V

    .line 389
    iget-boolean v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mSinglePane:Z

    if-eqz v4, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 394
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 395
    const-string v4, "show_fragment"

    const-string v5, "SearchChatResultFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v4, "thread-id"

    invoke-virtual {v2}, Lcom/google/android/talk/SearchActivity;->getConversationId()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string v4, "query"

    iget-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "searchActivity":Lcom/google/android/talk/SearchActivity;
    :cond_0
    :goto_0
    return-void

    .line 401
    .restart local v2    # "searchActivity":Lcom/google/android/talk/SearchActivity;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 402
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    const v4, 0x7f100077

    new-instance v5, Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct {v5}, Lcom/google/android/talk/fragments/SearchChatResultFragment;-><init>()V

    # getter for: Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/SearchActivity;->access$300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 404
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private updateTitle(Ljava/lang/String;I)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 296
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0c0070

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCountView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method


# virtual methods
.method public contentChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 314
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 318
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v3, ""

    .line 320
    .local v3, "msg":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    const-string v4, "talk"

    const-string v5, "SearchActivity.onContentChanged"

    invoke-static {v4, v5}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCount()I

    move-result v1

    .line 326
    .local v1, "count":I
    iget-object v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->updateTitle(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 329
    .local v2, "listView":Landroid/widget/ListView;
    if-lez v1, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mSinglePane:Z

    if-nez v4, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 332
    invoke-direct {p0, v7}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->openConversation(I)V

    goto :goto_0

    .line 318
    .end local v1    # "count":I
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_3
    const v4, 0x7f0c00b3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "entryPoint"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->updateTitle(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 422
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 423
    .local v8, "talkUri":Landroid/net/Uri;
    const-string v0, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "targetContact":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 426
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "from"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v0, "accountId"

    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountId"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v7}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->startActivity(Landroid/content/Intent;)V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 457
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "talkUri":Landroid/net/Uri;
    .end local v9    # "targetContact":Ljava/lang/String;
    :goto_0
    return-void

    .line 433
    .restart local v8    # "talkUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    .line 436
    .end local v8    # "talkUri":Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v6

    .line 440
    .local v6, "accountInfo":Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    :cond_2
    const-string v0, "talk"

    const-string v1, "No AccountInfo & no username, bailing from search."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mUserName:Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSearchQuery queryString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in:chats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->setSearch(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryHandler:Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;

    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;->setAdapter(Lcom/google/android/talk/SearchHeaderCursorAdapter;)V

    .line 455
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryHandler:Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;

    const/4 v3, 0x0

    sget-object v5, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->YES:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/GmailProviderWrapper;->runQueryForConversations(Ljava/lang/String;Landroid/content/AsyncQueryHandler;ILjava/lang/String;Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;)V

    goto/16 :goto_0
.end method

.method public isSelected(J)Z
    .locals 1
    .param p1, "conversationId"    # J

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 255
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 258
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;

    invoke-direct {v5, p0, v0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;-><init>(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mQueryHandler:Lcom/google/android/talk/SearchActivity$SearchResultsFragment$QueryHandler;

    .line 262
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 263
    iget-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 266
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 267
    .local v4, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "queryAction":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const-string v5, "talk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SearchActivity.onCreate queryAction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    new-instance v2, Lcom/google/android/talk/NetworkProgressMonitor;

    new-instance v5, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$1;

    invoke-direct {v5, p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment$1;-><init>(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;)V

    invoke-direct {v2, v0, v5}, Lcom/google/android/talk/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 278
    .local v2, "pm":Lcom/google/android/talk/IProgressMonitor;
    new-instance v5, Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-direct {v5, p0, v2}, Lcom/google/android/talk/SearchHeaderCursorAdapter;-><init>(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;Lcom/google/android/talk/IProgressMonitor;)V

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    .line 279
    iget-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {p0, v5}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 281
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setClickable(Z)V

    .line 282
    invoke-virtual {p0, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100080

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mEmptyView:Landroid/widget/TextView;

    .line 286
    iget-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mTitleView:Landroid/widget/TextView;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10007f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCountView:Landroid/widget/TextView;

    .line 291
    const-string v5, "onCreate"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedStates"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mSinglePane:Z

    .line 250
    invoke-virtual {p0, v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->setHasOptionsMenu(Z)V

    .line 251
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    const v0, 0x7f040037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCursor()Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    .line 516
    .local v0, "conversationCursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    .end local v0    # "conversationCursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 521
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-direct {p0, p3}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->openConversation(I)V

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 369
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mLastActivatedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mLastActivatedView:Landroid/view/View;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mLastActivatedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mLastActivatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 375
    :cond_1
    iput-object p2, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mLastActivatedView:Landroid/view/View;

    .line 376
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mMustRequeryCursor:Z

    .line 341
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 346
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->maybeRequery()V

    .line 347
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mCursorAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->getCursor()Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    move-result-object v0

    .line 504
    .local v0, "conversationCursor":Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 507
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->mMustRequeryCursor:Z

    .line 508
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 509
    return-void
.end method
