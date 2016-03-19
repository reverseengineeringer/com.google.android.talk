.class final Lben;
.super Leyd;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p4}, Lben;->a(I)Leyd;

    .line 67
    invoke-virtual {p0, v1}, Lben;->a(Z)Leyd;

    .line 68
    invoke-virtual {p0, v1}, Lben;->c(Z)Leyd;

    .line 69
    invoke-virtual {p0}, Lben;->b()Leyd;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lben;->d(Z)Leyd;

    .line 71
    iput-object p1, p0, Lben;->a:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lben;->e:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lben;->d()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lben;->e()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lben;->f()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-static {v0, v1, v2, v3, v4}, Lben;->a(IIZZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lben;->b:Ljava/lang/String;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v0, p0, Lben;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lben;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    iget-object v0, p0, Lben;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lben;->c:Ljava/lang/String;

    .line 96
    return-void
.end method
