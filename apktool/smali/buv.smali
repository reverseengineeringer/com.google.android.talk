.class final Lbuv;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lav;

.field final synthetic c:Lbut;


# direct methods
.method constructor <init>(Lbut;ILav;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lbuv;->c:Lbut;

    iput p2, p0, Lbuv;->a:I

    iput-object p3, p0, Lbuv;->b:Lav;

    invoke-direct {p0}, Lhbw;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11220
    iget-object v0, p0, Lbuv;->c:Lbut;

    iget v1, p0, Lbuv;->a:I

    invoke-virtual {v0, v1}, Lbut;->a(I)V

    .line 11221
    const/4 v0, 0x0

    .line 216
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1225
    iget-object v0, p0, Lbuv;->c:Lbut;

    new-instance v1, Lbuw;

    iget-object v2, p0, Lbuv;->c:Lbut;

    iget-object v3, p0, Lbuv;->b:Lav;

    .line 1226
    invoke-virtual {v3}, Lav;->getChildFragmentManager()Lbg;

    move-result-object v3

    iget-object v4, p0, Lbuv;->b:Lav;

    invoke-direct {v1, v2, v3, v4}, Lbuw;-><init>(Lbut;Lbg;Lav;)V

    .line 2059
    iput-object v1, v0, Lbut;->c:Lbuw;

    .line 1227
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 3059
    iget-object v0, v0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    .line 1227
    iget-object v1, p0, Lbuv;->c:Lbut;

    .line 4059
    iget-object v1, v1, Lbut;->c:Lbuw;

    .line 1227
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lkh;)V

    .line 1229
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 5059
    iget-object v0, v0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 1229
    iget-object v1, p0, Lbuv;->c:Lbut;

    .line 6059
    iget-object v1, v1, Lbut;->a:Landroid/support/v4/view/ViewPager;

    .line 1229
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 1232
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 7059
    iget-object v0, v0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    .line 1232
    iget-object v1, p0, Lbuv;->c:Lbut;

    .line 8059
    iget-object v1, v1, Lbut;->c:Lbuw;

    .line 8292
    iget v1, v1, Lbuw;->a:I

    .line 1232
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 1235
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 9059
    iget-object v0, v0, Lbut;->c:Lbuw;

    .line 1235
    invoke-virtual {v0}, Lbuw;->f()V

    .line 1238
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 10059
    iget-object v0, v0, Lbut;->a:Landroid/support/v4/view/ViewPager;

    .line 1238
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lbuv;->c:Lbut;

    .line 11059
    iget-object v0, v0, Lbut;->b:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 1239
    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->setVisibility(I)V

    .line 216
    return-void
.end method
