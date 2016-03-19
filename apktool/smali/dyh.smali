.class public final Ldyh;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 20
    iput-object p2, p0, Ldyh;->e:Ljava/lang/String;

    .line 21
    iput p3, p0, Ldyh;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 13

    .prologue
    .line 1030
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string v1, "Babel"

    const-string v2, "executeModifyOtrStatusOperation conversationId: "

    iget-object v0, p0, Ldyh;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :cond_0
    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v8

    .line 1037
    new-instance v12, Lbfz;

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 1037
    invoke-direct {v12, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 1038
    invoke-virtual {v12}, Lbfz;->a()V

    .line 1040
    :try_start_0
    iget-object v0, p0, Ldyh;->e:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lbfz;->y(Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Ldyh;->e:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lbfz;->M(Ljava/lang/String;)J

    move-result-wide v4

    .line 1050
    new-instance v1, Ledp;

    iget-object v2, p0, Ldyh;->e:Ljava/lang/String;

    .line 2127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 1051
    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v3

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    iget v10, p0, Ldyh;->a:I

    sget-object v11, Lemc;->b:Lemc;

    invoke-direct/range {v1 .. v11}, Ledp;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;ILemc;)V

    .line 1053
    invoke-virtual {v1, v12}, Ledp;->b(Lbfz;)V

    .line 1055
    invoke-virtual {v12}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v12}, Lbfz;->c()V

    .line 1060
    iget-object v0, p0, Ldyh;->e:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    new-instance v0, Lbvm;

    iget-object v1, p0, Ldyh;->e:Ljava/lang/String;

    iget v2, p0, Ldyh;->a:I

    invoke-direct {v0, v8, v1, v2}, Lbvm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ldyh;->a(Leff;)V

    .line 1064
    :cond_1
    iget-object v0, p0, Ldyh;->e:Ljava/lang/String;

    invoke-static {v12, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 27
    return-void

    .line 1031
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Lbfz;->c()V

    throw v0
.end method
