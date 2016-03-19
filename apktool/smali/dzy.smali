.class public final Ldzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbfd;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Z

.field final synthetic l:Lgeo;

.field final synthetic m:J


# direct methods
.method public constructor <init>(ILbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;J)V
    .locals 1

    .prologue
    .line 1840
    iput p1, p0, Ldzy;->a:I

    iput-object p2, p0, Ldzy;->b:Lbfd;

    iput-object p3, p0, Ldzy;->c:Ljava/lang/String;

    iput-object p4, p0, Ldzy;->d:Ljava/lang/String;

    iput-object p5, p0, Ldzy;->e:Ljava/lang/String;

    iput-object p6, p0, Ldzy;->f:Ljava/lang/String;

    iput p7, p0, Ldzy;->g:I

    iput p8, p0, Ldzy;->h:I

    iput-object p9, p0, Ldzy;->i:Ljava/lang/String;

    iput-object p10, p0, Ldzy;->j:Ljava/lang/String;

    iput-boolean p11, p0, Ldzy;->k:Z

    iput-object p12, p0, Ldzy;->l:Lgeo;

    iput-wide p13, p0, Ldzy;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 1843
    const/4 v0, 0x1

    move v14, v0

    :goto_0
    iget v0, p0, Ldzy;->a:I

    if-gt v14, v0, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1844
    const-class v1, Lefk;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefk;

    iget-object v1, p0, Ldzy;->b:Lbfd;

    iget-object v2, p0, Ldzy;->c:Ljava/lang/String;

    iget-object v3, p0, Ldzy;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xd

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldzy;->e:Ljava/lang/String;

    iget-object v6, p0, Ldzy;->f:Ljava/lang/String;

    iget v7, p0, Ldzy;->g:I

    iget v8, p0, Ldzy;->h:I

    iget-object v9, p0, Ldzy;->i:Ljava/lang/String;

    iget-object v10, p0, Ldzy;->j:Ljava/lang/String;

    iget-boolean v11, p0, Ldzy;->k:Z

    iget-object v12, p0, Ldzy;->l:Lgeo;

    move v13, v5

    .line 1845
    invoke-interface/range {v0 .. v13}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    .line 1849
    :try_start_0
    iget-wide v0, p0, Ldzy;->m:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    :goto_1
    add-int/lit8 v0, v14, 0x1

    move v14, v0

    goto :goto_0

    .line 1854
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
