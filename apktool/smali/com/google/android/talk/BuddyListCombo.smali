.class public Lcom/google/android/talk/BuddyListCombo;
.super Lcom/google/android/talk/GtalkServiceActivity;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;
.implements Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BuddyListCombo$11;,
        Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;,
        Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;,
        Lcom/google/android/talk/BuddyListCombo$Focus;
    }
.end annotation


# static fields
.field private static sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

.field mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

.field mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field private mClientTypeImageView:Landroid/widget/ImageView;

.field private mCurtainsOpen:Z

.field private mCustomTitleContainer:Landroid/view/View;

.field private mExpando:Lcom/google/android/talk/DrawerLayout;

.field private mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/talk/BuddyListCombo$Focus;",
            ">;"
        }
    .end annotation
.end field

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mLeftPanelContainer:Landroid/view/View;

.field private mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

.field private mOnResumeRunnable:Ljava/lang/Runnable;

.field private mPresenceImageView:Landroid/widget/ImageView;

.field private mRightPanelContainer:Landroid/view/View;

.field private mRosterLoaded:Z

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

.field private mStatus:Landroid/widget/TextView;

.field private mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletMode:Z

.field private mTitle:Landroid/widget/TextView;

.field private mVideoChatButtonView:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    .line 609
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$4;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    .line 623
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$5;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 703
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 1299
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$8;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/talk/BuddyListCombo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/BuddyListCombo$Focus;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Lcom/google/android/talk/BuddyListCombo$Focus;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/BuddyListCombo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->addToContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Lcom/google/android/talk/BuddyListCombo$Focus;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/BuddyListCombo;->setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Lcom/google/android/talk/TalkApp$AccountInfo;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/BuddyListCombo;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByAccountId(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/BuddyListCombo;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private addToContacts(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1456
    if-eqz p1, :cond_0

    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1463
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string v1, "im_protocol"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1467
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1469
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1471
    :cond_0
    return-void
.end method

.method private cleanupAfterCurtainsAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1534
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1535
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    iput-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1537
    return-void
.end method

.method public static displaySettings(Landroid/app/Activity;Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 4

    .prologue
    .line 1448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1449
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1450
    const-string v1, "username"

    iget-object v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1453
    return-void
.end method

.method private ensureSwitchAccountAdapter()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 1245
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 1247
    :cond_0
    return-void
.end method

.method private expandoShouldBeOpen()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 485
    .local v0, "landscape":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isXLargeTabletWidth(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "landscape":Z
    :cond_0
    move v0, v2

    .line 483
    goto :goto_0

    .restart local v0    # "landscape":Z
    :cond_1
    move v1, v2

    .line 485
    goto :goto_1
.end method

.method private gotoDefaultExpandoState()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 115
    :cond_0
    return-void
.end method

.method private handleBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v2}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v3, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v3, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, v3, :cond_2

    .line 132
    :cond_1
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v2}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    move v0, v1

    .line 133
    goto :goto_0

    :cond_2
    move v0, v2

    .line 135
    goto :goto_0
.end method

.method private hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "t"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 706
    if-nez p1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private hideLoadingView()V
    .locals 3

    .prologue
    .line 582
    const v2, 0x7f100020

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 583
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 588
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_2

    .line 589
    const v2, 0x7f10002d

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 593
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 594
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 885
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 887
    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 888
    const-string v0, "accountId"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 891
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 893
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 897
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->loadAccountInfo(JLjava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 907
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_3

    .line 915
    :cond_2
    :goto_0
    return-void

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 912
    :cond_4
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAccount mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initAccountSwitcher()V
    .locals 3

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/google/android/talk/BuddyListCombo$7;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyListCombo$7;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1203
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByUsername(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isUsingListNavigationMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1729
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1730
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return v1

    .line 1733
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1736
    goto :goto_0
.end method

.method private loadAccountInfo(JLjava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 918
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 919
    :cond_0
    new-instance v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 920
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-wide p1, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 921
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object p3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 923
    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyListCombo] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private onCancelSearch()V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 1517
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1518
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1520
    :cond_2
    return-void
.end method

.method private onDisplaySettings()V
    .locals 1

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V

    .line 1444
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->displaySettings(Landroid/app/Activity;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1445
    return-void
.end method

.method private onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4

    .prologue
    .line 1474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1476
    const-class v1, Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1477
    const-string v1, "userId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1478
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1480
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1481
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 370
    return-void
.end method

.method private removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "t"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 715
    if-nez p1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private removeItem(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuId"    # I

    .prologue
    .line 392
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 393
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 394
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    :cond_0
    return-void
.end method

.method private resetToBaseIntent()V
    .locals 2

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    .line 1295
    return-void
.end method

.method private selectAccountInSpinnerByAccountId(J)V
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 1222
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 1223
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 1224
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1225
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1226
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1228
    .local v0, "a":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1234
    .end local v0    # "a":Landroid/app/ActionBar;
    .end local v1    # "i":I
    .end local v2    # "max":I
    :cond_0
    return-void

    .line 1224
    .restart local v1    # "i":I
    .restart local v2    # "max":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private selectAccountInSpinnerByUsername(Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 1212
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "subtitle"    # Ljava/lang/CharSequence;
    .param p3, "presence"    # I
    .param p4, "clientType"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 692
    const/4 v1, -0x1

    if-ne p3, v1, :cond_4

    .line 693
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    :cond_3
    :goto_0
    return-void

    .line 695
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1, p3, v2}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v0

    .line 697
    .local v0, "icon":I
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 1
    .param p1, "f"    # Lcom/google/android/talk/BuddyListCombo$Focus;

    .prologue
    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 758
    return-void
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 761
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne p1, v0, :cond_0

    .line 762
    sget-object p1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, p1, :cond_1

    .line 882
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 770
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v1, :cond_2

    .line 771
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_2
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 776
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 777
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, v1, :cond_4

    .line 781
    :cond_3
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V

    .line 784
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v0, :cond_7

    .line 785
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showBuddyListFragment(Landroid/app/FragmentTransaction;)V

    .line 787
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$11;->$SwitchMap$com$google$android$talk$BuddyListCombo$Focus:[I

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 810
    :goto_1
    const/high16 v0, 0x10b0000

    const v1, 0x10b0001

    invoke-virtual {v7, v0, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 877
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 881
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 789
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showSetStatusFragment(Landroid/app/FragmentTransaction;)V

    .line 796
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_6

    .line 797
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 799
    :cond_6
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 803
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showChatScreenFragment(Landroid/app/FragmentTransaction;)V

    .line 804
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 808
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_7
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$11;->$SwitchMap$com$google$android$talk$BuddyListCombo$Focus:[I

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 862
    :goto_3
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 863
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    .line 870
    :goto_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 871
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, v1, :cond_5

    .line 872
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 815
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 816
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 818
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 819
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->removeOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 820
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 821
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 823
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showSetStatusFragment(Landroid/app/FragmentTransaction;)V

    .line 825
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/google/android/talk/BuddyListCombo;->setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 828
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 829
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_3

    .line 832
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 833
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 835
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 836
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->removeOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 837
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 838
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 840
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showChatScreenFragment(Landroid/app/FragmentTransaction;)V

    .line 842
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    const-string v1, ""

    const-string v2, ""

    move v5, v4

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V

    .line 843
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 844
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_3

    .line 848
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 849
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 851
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 852
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 854
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showBuddyListFragment(Landroid/app/FragmentTransaction;)V

    .line 856
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 858
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    goto/16 :goto_3

    .line 865
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_4

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 813
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setupActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 457
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 459
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 461
    .local v1, "v":Landroid/view/ViewGroup;
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 466
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 467
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 471
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 473
    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    .line 474
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f100030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    .line 475
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    .line 476
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    .line 478
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;

    .line 480
    return-void
.end method

.method private setupExpando()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 493
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->expandoShouldBeOpen()Z

    move-result v2

    .line 495
    .local v2, "expandoOpen":Z
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->isIconified()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 496
    .local v5, "searchOpen":Z
    :goto_0
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v9, v2}, Lcom/google/android/talk/DrawerLayout;->setDefaultToExpanded(Z)V

    .line 497
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    or-int v10, v2, v5

    invoke-virtual {v9, v10, v7}, Lcom/google/android/talk/DrawerLayout;->setExpandedState(ZZ)V

    .line 498
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v9}, Lcom/google/android/talk/DrawerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 499
    .local v6, "vg":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    const v10, 0x7f100025

    invoke-virtual {v9, v10}, Lcom/google/android/talk/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 500
    .local v3, "expandoOpenClose":Landroid/view/ViewGroup;
    const v9, 0x7f100028

    invoke-virtual {p0, v9}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    .line 502
    .local v4, "lp":Lcom/google/android/talk/DrawerLayout$LayoutParams;
    if-eqz v2, :cond_4

    .line 503
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 504
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 508
    :goto_1
    const v9, 0x7f10002c

    invoke-virtual {p0, v9}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "expandedRightView":Landroid/view/View;
    const v9, 0x7f100026

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 510
    .local v1, "expandoButton":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 511
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    new-instance v8, Lcom/google/android/talk/BuddyListCombo$2;

    invoke-direct {v8, p0, v1, v0, v2}, Lcom/google/android/talk/BuddyListCombo$2;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual {v7, v8}, Lcom/google/android/talk/DrawerLayout;->setOnExpandStateChangedListener(Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;)V

    .line 549
    if-eqz v0, :cond_1

    .line 550
    new-instance v7, Lcom/google/android/talk/BuddyListCombo$3;

    invoke-direct {v7, p0}, Lcom/google/android/talk/BuddyListCombo$3;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    :cond_1
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v7}, Lcom/google/android/talk/DrawerLayout;->requestLayout()V

    .line 558
    return-void

    .end local v0    # "expandedRightView":Landroid/view/View;
    .end local v1    # "expandoButton":Landroid/widget/ImageView;
    .end local v3    # "expandoOpenClose":Landroid/view/ViewGroup;
    .end local v4    # "lp":Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .end local v5    # "searchOpen":Z
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_2
    move v5, v7

    .line 495
    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_0

    .line 506
    .restart local v3    # "expandoOpenClose":Landroid/view/ViewGroup;
    .restart local v4    # "lp":Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .restart local v5    # "searchOpen":Z
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_4
    const/high16 v9, 0x40a00000    # 5.0f

    iput v9, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    goto :goto_1
.end method

.method private setupSearchUI()V
    .locals 3

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 1543
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$9;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1576
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$10;

    invoke-direct {v1, p0}, Lcom/google/android/talk/BuddyListCombo$10;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1589
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1590
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1591
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0c00a1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/BuddyListCombo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1592
    return-void
.end method

.method private showBuddyListFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "t"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_3

    .line 744
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 745
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->expandoShouldBeOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setNarrowMode(Z)V

    .line 748
    :cond_0
    const v0, 0x7f100027

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 750
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 754
    :cond_1
    :goto_1
    return-void

    .line 746
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private showChatScreenFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "t"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 736
    const v0, 0x7f10002a

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private showFragmentBasedOnIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 602
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    goto :goto_0
.end method

.method private showLoadingView(Z)V
    .locals 7
    .param p1, "onlyShowSpinner"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 561
    const v6, 0x7f100020

    invoke-virtual {p0, v6}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 562
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 579
    :goto_0
    return-void

    .line 566
    :cond_0
    const v6, 0x7f100021

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 567
    .local v2, "statusMsgTitle":Landroid/widget/TextView;
    const v6, 0x7f100022

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    .local v1, "statusMsg":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 570
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_1

    .line 571
    const v6, 0x7f10002d

    invoke-virtual {p0, v6}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 574
    if-eqz p1, :cond_2

    move v4, v5

    .line 575
    .local v4, "visible":I
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSetStatusFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "t"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v0, :cond_1

    .line 726
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 727
    const v0, 0x7f10002b

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public static startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1684
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    invoke-static {p1, p2, v0}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1687
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1688
    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1689
    const-string v0, "accountId"

    invoke-virtual {v2, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1690
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1692
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1693
    return-void
.end method

.method private startCurtainsAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1524
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    const v1, 0x7f050008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1527
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    const v1, 0x7f050007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1531
    return-void
.end method

.method public static startVoiceChat(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1696
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-static {p1, p2, v0}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1699
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1701
    const-string v1, "vc"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1702
    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string v0, "accountId"

    invoke-virtual {v2, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1704
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1706
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1707
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 374
    return-void
.end method


# virtual methods
.method public connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3

    .prologue
    .line 1052
    iput-object p2, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    invoke-interface {p2, v0}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    const-string v1, "talk"

    const-string v2, "addConnectionStateListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishedLoading()V
    .locals 1

    .prologue
    .line 1661
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRosterLoaded:Z

    .line 1663
    return-void
.end method

.method protected getAccountId()J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method public getBuddyListController()Lcom/google/android/talk/fragments/BuddyListFragment$Controller;
    .locals 1

    .prologue
    .line 1596
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    if-eqz v0, :cond_0

    .line 1597
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1600
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    goto :goto_0
.end method

.method public getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1679
    const-string v0, "BuddyListCombo"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/talk/BuddyListCombo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1725
    :cond_0
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 5
    .param p1, "accountInfo"    # Lcom/google/android/talk/TalkApp$AccountInfo;

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    if-nez v1, :cond_0

    .line 1028
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;-><init>(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$1;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    .line 1033
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1035
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1036
    .local v0, "service":Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_1

    .line 1039
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/talk/ConnectionStateOnlineReceiver;->markAccountNotified(Landroid/content/Context;Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1048
    return-void
.end method

.method public onAccountListChanged()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 383
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 386
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 388
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 986
    sparse-switch p1, :sswitch_data_0

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 989
    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "approval"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 992
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 997
    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string v0, "logout"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1005
    :sswitch_2
    if-eq p2, v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->finish()V

    goto :goto_0

    .line 1010
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 1011
    const-string v0, "was_removed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    goto :goto_0

    .line 1019
    :sswitch_4
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1020
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/talk/fragments/SetStatusFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1021
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    goto :goto_0

    .line 986
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x64 -> :sswitch_2
        0x12c -> :sswitch_1
        0x44c -> :sswitch_4
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 359
    instance-of v0, p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_1

    .line 360
    check-cast p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    .end local p1    # "f":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 361
    .restart local p1    # "f":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v0, :cond_2

    .line 362
    check-cast p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    .end local p1    # "f":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    goto :goto_0

    .line 363
    .restart local p1    # "f":Landroid/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 364
    check-cast p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    .end local p1    # "f":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->handleBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onBackPressed()V

    .line 143
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 258
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/SetStatusFragment;->isHidden()Z

    move-result v0

    .line 259
    .local v0, "hidden":Z
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v3, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 260
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 261
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>()V

    .line 262
    .local v1, "newStatusFragment":Lcom/google/android/talk/fragments/SetStatusFragment;
    const v5, 0x7f10002b

    invoke-virtual {v3, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 269
    :cond_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 273
    .end local v0    # "hidden":Z
    .end local v1    # "newStatusFragment":Lcom/google/android/talk/fragments/SetStatusFragment;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    const v5, 0x7f100011

    invoke-virtual {p0, v5}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 274
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 278
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 279
    const v5, 0x7f0b002e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 286
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v5, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    .line 292
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->isDisallowedUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/google/android/talk/MultiUserErrorActivity;->startMultiUserErrorActivity(Landroid/app/Activity;)V

    .line 250
    :goto_0
    return-void

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    .line 179
    const-string v0, "FocusStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    .line 181
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 182
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 184
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    const-class v5, Lcom/google/android/talk/BuddyListCombo$Focus;

    aget-object v6, v2, v0

    invoke-static {v5, v6}, Lcom/google/android/talk/BuddyListCombo$Focus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 197
    if-eqz p1, :cond_2

    .line 201
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 203
    if-eqz v0, :cond_2

    cmp-long v2, v4, v7

    if-eqz v2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "from"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    :cond_2
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    .line 210
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 214
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_3

    .line 217
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v0

    if-nez v0, :cond_5

    move v2, v3

    .line 224
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_6

    .line 225
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    .line 229
    :goto_4
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DrawerLayout;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 231
    if-nez v2, :cond_7

    :goto_5
    invoke-direct {p0, v3}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupActionBar()V

    .line 233
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 235
    const v0, 0x7f100028

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    .line 236
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_4

    .line 241
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    .line 242
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->requestFocus()Z

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 249
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 222
    goto :goto_3

    .line 227
    :cond_6
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    goto :goto_4

    :cond_7
    move v3, v1

    .line 231
    goto :goto_5

    .line 185
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 163
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 929
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 931
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 941
    :goto_1
    const-string v5, "username"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 942
    const-string v6, "accountId"

    invoke-virtual {p1, v6, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 944
    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 946
    :cond_1
    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 947
    invoke-direct {p0, v4, p1}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 948
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 950
    :cond_2
    :goto_2
    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 952
    :goto_3
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent mAccountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 956
    :cond_3
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/talk/BuddyListCombo$6;-><init>(Lcom/google/android/talk/BuddyListCombo;ZLandroid/content/Intent;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 980
    invoke-virtual {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    move-wide v0, v2

    .line 938
    goto :goto_1

    .line 950
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v1, v4

    .line 953
    goto :goto_4

    :cond_7
    move-wide v2, v0

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1287
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1258
    :sswitch_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1260
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1262
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->handleBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v2, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v2, :cond_1

    .line 1266
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    :cond_0
    :goto_1
    move v0, v1

    .line 1271
    goto :goto_0

    .line 1268
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 1275
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onDisplaySettings()V

    move v0, v1

    .line 1276
    goto :goto_0

    .line 1280
    :sswitch_2
    const-string v0, "talk_buddylist"

    invoke-static {p0, v0}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 1281
    goto :goto_0

    .line 1284
    :sswitch_3
    invoke-static {p0}, Lcom/google/android/talk/HelpUtils;->showFeedbackForm(Landroid/content/Context;)V

    move v0, v1

    .line 1285
    goto :goto_0

    .line 1251
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000af -> :sswitch_1
        0x7f1000b0 -> :sswitch_2
        0x7f1000c5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v2, 0x7f1000be

    .line 400
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 406
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 407
    const v1, 0x7f1000bd

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 408
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 410
    const v1, 0x7f1000b7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    .line 411
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 413
    .local v0, "sv":Landroid/widget/SearchView;
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    new-instance v2, Lcom/google/android/talk/BuddyListCombo$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyListCombo$1;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 442
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eq v1, v0, :cond_0

    .line 443
    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    .line 444
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 446
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10000003

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 449
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V

    .line 453
    .end local v0    # "sv":Landroid/widget/SearchView;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onRestart()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    .line 317
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onResume()V

    .line 298
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->cleanupAfterCurtainsAnimation()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->showDialogIfNoDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z

    .line 307
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 311
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->currentChatUser()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "currentChat":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->currentChatAccount()J

    move-result-wide v1

    .line 325
    .local v1, "currentChatAccount":J
    if-eqz v0, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 326
    const-string v5, "from"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "accountId"

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 333
    .end local v0    # "currentChat":Ljava/lang/String;
    .end local v1    # "currentChatAccount":J
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v5}, Lcom/google/android/talk/BuddyListCombo$Focus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const-string v5, "FocusStack"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStart()V

    .line 148
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    .line 150
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 344
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStop()V

    .line 345
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->unregisterForAccountListChanged()V

    .line 347
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "removeConnectionStateListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshAccountInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1614
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 1615
    const-string v0, "refreshAccountInfo: mAccountInfo to start with is null!!!"

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: old mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1622
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1624
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    .line 1625
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/TalkApp;->getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1629
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v1, :cond_5

    .line 1634
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1635
    if-eqz v1, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1638
    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1648
    :cond_5
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: new mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1626
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1627
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    goto :goto_1

    .line 1640
    :cond_7
    const-string v1, "refreshAccountInfo: mAccountInfo still null, starting AccountSelectionActivity"

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1643
    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1644
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 1
    .param p1, "service"    # Lcom/google/android/gtalkservice/IGTalkService;
    .param p2, "session"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 1667
    invoke-super {p0, p1, p2}, Lcom/google/android/talk/GtalkServiceActivity;->sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 1671
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->showDialogIfLowStorage(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z

    .line 1672
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 1497
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->setIntent(Landroid/content/Intent;)V

    .line 1498
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFocus(Landroid/content/Intent;)V

    .line 1501
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1502
    const-string v0, "accountId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1503
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1504
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to set intent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with account value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1508
    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1486
    if-eqz p4, :cond_1

    .line 1487
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/talk/GtalkServiceActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public startVideoChatAnimation()Z
    .locals 1

    .prologue
    .line 1711
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->startCurtainsAnimation()V

    .line 1713
    const/4 v0, 0x1

    .line 1715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAccounts mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1120
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 1121
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_3

    .line 1129
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->softUiReset()V

    .line 1130
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v0, :cond_4

    .line 1133
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1135
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->switchAccounts()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    const-string v1, "talk"

    const-string v2, "NPE switching accounts: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    throw v0

    .line 1116
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
