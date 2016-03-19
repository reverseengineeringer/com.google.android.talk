.class final Lbnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 3191
    iput-object p1, p0, Lbnv;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 3213
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 3

    .prologue
    .line 3194
    iget-object v0, p0, Lbnv;->a:Lbng;

    .line 3285
    invoke-virtual {v0, p1}, Lbng;->a(Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lbnv;->a:Lbng;

    .line 4285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3196
    invoke-static {v0, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(Lbfd;Ljava/lang/String;)I

    .line 3203
    iget-object v0, p0, Lbnv;->a:Lbng;

    .line 5285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3203
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v1

    .line 3204
    iget-object v0, p0, Lbnv;->a:Lbng;

    .line 6285
    iget-object v0, v0, Lbng;->binder:Lilh;

    .line 3204
    const-class v2, Lcyh;

    .line 3205
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 3206
    invoke-interface {v0, v1, p1}, Lcyh;->a(ILjava/lang/String;)V

    .line 3207
    iget-object v0, p0, Lbnv;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->binder:Lilh;

    .line 3207
    const-class v2, Lcyh;

    .line 3208
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 3209
    invoke-interface {v0, v1, p1}, Lcyh;->c(ILjava/lang/String;)V

    .line 3210
    return-void
.end method
