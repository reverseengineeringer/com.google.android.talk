.class public abstract Lejc;
.super Lehx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field final e:Z

.field public f:Leyg;

.field final g:Ljava/lang/String;

.field h:Lejd;


# direct methods
.method public constructor <init>(ZLeyg;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lehx;-><init>()V

    .line 93
    iput-object p4, p0, Lejc;->a:Ljava/lang/Object;

    .line 94
    iput-boolean p1, p0, Lejc;->e:Z

    .line 95
    iput-object p2, p0, Lejc;->f:Leyg;

    .line 96
    iput-object p3, p0, Lejc;->g:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public abstract a([B)Lejb;
.end method

.method public abstract a(Lejb;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lejc;->f:Leyg;

    invoke-virtual {v0}, Leyg;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public j()Ljava/io/File;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public abstract k_()Leis;
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lejc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lejc;->f:Leyg;

    invoke-virtual {v0}, Leyg;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Leyg;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lejc;->f:Leyg;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lejc;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 141
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lejc;->f:Leyg;

    if-nez v0, :cond_0

    .line 142
    const-string v0, " None"

    .line 143
    :goto_0
    invoke-virtual {p0}, Lejc;->f()Z

    move-result v2

    invoke-virtual {p0}, Lejc;->k()Z

    move-result v3

    .line 144
    invoke-virtual {p0}, Lejc;->a()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " MediaUrl:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldUseLoaderQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lejc;->f:Leyg;

    invoke-virtual {v0}, Leyg;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
