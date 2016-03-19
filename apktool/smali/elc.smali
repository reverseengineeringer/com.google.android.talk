.class public final Lelc;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Lhpu;

.field b:Lelm;

.field c:Lbfd;

.field d:Lbym;

.field e:Like;

.field f:Like;

.field private g:Lelf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Limg;-><init>()V

    .line 49
    new-instance v0, Liiz;

    iget-object v1, p0, Lelc;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lelc;->a:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lelc;->c:Lbfd;

    .line 77
    iget-object v0, p0, Lelc;->context:Lill;

    const-class v1, Lika;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    .line 78
    invoke-interface {v0}, Lika;->b()Lcom/google/android/libraries/social/settings/PreferenceScreen;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lelc;->a:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 84
    new-instance v2, Like;

    iget-object v3, p0, Lelc;->context:Lill;

    invoke-direct {v2, v3, v4}, Like;-><init>(Landroid/content/Context;B)V

    iput-object v2, p0, Lelc;->e:Like;

    .line 85
    iget-object v2, p0, Lelc;->e:Like;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->fc:I

    invoke-virtual {v2, v3}, Like;->g(I)V

    .line 86
    iget-object v2, p0, Lelc;->e:Like;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->fb:I

    invoke-virtual {v2, v3}, Like;->h(I)V

    .line 87
    iget-object v2, p0, Lelc;->e:Like;

    iget-object v3, p0, Lelc;->b:Lelm;

    invoke-virtual {v3, v1}, Lelm;->b(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Like;->a(Z)V

    .line 88
    iget-object v2, p0, Lelc;->e:Like;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 90
    new-instance v2, Like;

    iget-object v3, p0, Lelc;->context:Lill;

    invoke-direct {v2, v3, v4}, Like;-><init>(Landroid/content/Context;B)V

    iput-object v2, p0, Lelc;->f:Like;

    .line 91
    iget-object v2, p0, Lelc;->f:Like;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->iW:I

    invoke-virtual {v2, v3}, Like;->g(I)V

    .line 92
    iget-object v2, p0, Lelc;->f:Like;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->iX:I

    invoke-virtual {v2, v3}, Like;->h(I)V

    .line 93
    iget-object v2, p0, Lelc;->f:Like;

    iget-object v3, p0, Lelc;->b:Lelm;

    .line 94
    invoke-virtual {v3, v1}, Lelm;->c(I)Z

    move-result v1

    .line 93
    invoke-virtual {v2, v1}, Like;->a(Z)V

    .line 95
    iget-object v1, p0, Lelc;->f:Like;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/social/settings/PreferenceScreen;->c(Lijc;)Z

    .line 99
    new-instance v0, Leld;

    invoke-direct {v0, p0}, Leld;-><init>(Lelc;)V

    .line 122
    iget-object v1, p0, Lelc;->e:Like;

    invoke-virtual {v1, v0}, Like;->a(Lijg;)V

    .line 123
    iget-object v1, p0, Lelc;->f:Like;

    invoke-virtual {v1, v0}, Like;->a(Lijg;)V

    .line 127
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lelc;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lelc;->a:Lhpu;

    .line 56
    iget-object v0, p0, Lelc;->binder:Lilh;

    const-class v1, Lelm;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelm;

    iput-object v0, p0, Lelc;->b:Lelm;

    .line 57
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Limg;->onStart()V

    .line 62
    new-instance v0, Lelf;

    .line 1212
    invoke-direct {v0, p0}, Lelf;-><init>(Lelc;)V

    .line 62
    iput-object v0, p0, Lelc;->g:Lelf;

    .line 63
    iget-object v0, p0, Lelc;->g:Lelf;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Limg;->onStop()V

    .line 69
    iget-object v0, p0, Lelc;->g:Lelf;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lelc;->g:Lelf;

    .line 71
    return-void
.end method
