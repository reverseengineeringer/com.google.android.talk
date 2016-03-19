.class final Lbxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfif;


# instance fields
.field final synthetic a:Lbxv;


# direct methods
.method constructor <init>(Lbxv;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lbxw;->a:Lbxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lbxv;->a:Z

    .line 131
    iget-object v0, p0, Lbxw;->a:Lbxv;

    iget-object v0, v0, Lbxv;->c:Leim;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lbxw;->a:Lbxv;

    const/4 v1, 0x0

    iput-object v1, v0, Lbxv;->c:Leim;

    .line 135
    :cond_0
    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 102
    sget-boolean v1, Lbxv;->a:Z

    .line 108
    iget-object v1, p0, Lbxw;->a:Lbxv;

    invoke-virtual {v1}, Lbxv;->getActivity()Lba;

    move-result-object v1

    if-nez v1, :cond_1

    .line 109
    const-string v1, "Babel"

    const-string v2, "Google API client connected but MakePhoneCallFragment is detached."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lbxw;->a:Lbxv;

    iget-object v1, v1, Lbxv;->b:Lfic;

    .line 2036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1034
    const-string v3, "babel_gms_sync_allowance"

    const-wide/16 v4, 0x7080

    invoke-static {v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1044
    const/4 v2, 0x1

    invoke-static {v2}, Ldvd;->d(Z)[I

    move-result-object v7

    array-length v8, v7

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_2

    aget v0, v7, v6

    .line 1045
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 1046
    sget-object v0, Lglu;->h:Lglz;

    .line 1047
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lbfd;->U()Ljava/lang/String;

    move-result-object v3

    .line 1046
    invoke-virtual/range {v0 .. v5}, Lglz;->a(Lfic;Ljava/lang/String;Ljava/lang/String;J)Lfij;

    .line 1044
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lbxw;->a:Lbxv;

    iget-boolean v0, v0, Lbxv;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxw;->a:Lbxv;

    iget-object v0, v0, Lbxv;->c:Leim;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbxw;->a:Lbxv;

    invoke-virtual {v0}, Lbxv;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lbxw;->a:Lbxv;

    invoke-virtual {v0}, Lbxv;->c()V

    goto :goto_0
.end method
