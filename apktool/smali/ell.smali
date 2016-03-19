.class final Lell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Leot;

.field final synthetic b:Lelk;


# direct methods
.method constructor <init>(Lelk;Leot;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lell;->b:Lelk;

    iput-object p2, p0, Lell;->a:Leot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 92
    check-cast p2, Ljava/lang/Boolean;

    .line 1015
    const/4 v0, 0x0

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h()V

    .line 98
    :goto_0
    iget-object v1, p0, Lell;->a:Leot;

    invoke-interface {v1, v0}, Leot;->a(Z)V

    .line 99
    iget-object v1, p0, Lell;->b:Lelk;

    .line 1029
    iget-object v1, v1, Lelk;->a:Lhaw;

    .line 99
    if-eqz v0, :cond_1

    .line 101
    const/16 v0, 0xafe

    .line 99
    :goto_1
    invoke-interface {v1, v0}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lhax;->d()V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i()V

    goto :goto_0

    .line 102
    :cond_1
    const/16 v0, 0xaff

    goto :goto_1
.end method
