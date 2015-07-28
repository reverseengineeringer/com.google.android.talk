.class Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerActiveChats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mChatsMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/talk/ChatView;",
            ">;"
        }
    .end annotation
.end field

.field mOnDone:Ljava/lang/Runnable;

.field private mPageAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V
    .locals 3
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    .line 209
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    .line 277
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 144
    const v0, 0x7f100037

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 145
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 3
    .param p1, "vr"    # Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;

    .prologue
    .line 158
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 159
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    invoke-interface {p1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;->run(Landroid/view/View;)Z

    goto :goto_0

    .line 161
    .end local v0    # "cv":Lcom/google/android/talk/ChatView;
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getSelectedChatView()Lcom/google/android/talk/ChatView;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 191
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 185
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "username":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 187
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "cv":Lcom/google/android/talk/ChatView;
    :cond_2
    move-object v0, v3

    .line 191
    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->stop()V

    .line 199
    :cond_0
    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "moveForward"    # Z
    .param p2, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 205
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    .line 206
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedItemPosition()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
    .locals 4
    .param p1, "ga"    # Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .prologue
    const/4 v3, 0x0

    .line 380
    if-nez p1, :cond_1

    .line 381
    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    .line 382
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 383
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 401
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 404
    :cond_0
    return-void

    .line 385
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v2, p1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mLocalChatList:Lcom/google/android/talk/util/ChatList;

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    .line 386
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 387
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 388
    .local v1, "viewPagerAdapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 5
    .param p1, "newPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 409
    .local v0, "curPos":I
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 414
    if-ne v0, p1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->onPageSelected(I)V

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f100038

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v3}, Lcom/google/android/talk/util/ChatList;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
