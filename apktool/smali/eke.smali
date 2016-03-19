.class final Leke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liiv;

.field final synthetic d:Ldnq;

.field final synthetic e:Lekc;


# direct methods
.method constructor <init>(Lekc;Ljava/lang/String;Ljava/lang/String;Liiv;Ldnq;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Leke;->e:Lekc;

    iput-object p2, p0, Leke;->a:Ljava/lang/String;

    iput-object p3, p0, Leke;->b:Ljava/lang/String;

    iput-object p4, p0, Leke;->c:Liiv;

    iput-object p5, p0, Leke;->d:Ldnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 173
    new-instance v4, Lbih;

    const/4 v0, 0x0

    iget-object v1, p0, Leke;->a:Ljava/lang/String;

    iget-object v2, p0, Leke;->b:Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Lbih;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    check-cast p2, Ljava/lang/String;

    iput-object p2, v4, Lbih;->d:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Leke;->e:Lekc;

    iget-object v3, p0, Leke;->c:Liiv;

    iget-object v5, p0, Leke;->d:Ldnq;

    .line 1186
    invoke-virtual {v3}, Liiv;->f()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, v4, Lbih;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Liiv;->b(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Liiv;->b(Ljava/lang/CharSequence;)V

    .line 1187
    new-instance v0, Lekg;

    iget-object v1, v7, Lekc;->context:Lill;

    iget-object v2, v7, Lekc;->a:Lhpu;

    .line 1189
    invoke-interface {v2}, Lhpu;->a()I

    move-result v2

    invoke-virtual {v3}, Liiv;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lekg;-><init>(Landroid/content/Context;ILiiv;Lbih;Ldnq;Ljava/lang/String;)V

    new-instance v1, Lbyj;

    iget-object v2, v7, Lekc;->context:Lill;

    invoke-direct {v1, v2}, Lbyj;-><init>(Landroid/content/Context;)V

    .line 1187
    invoke-static {v0, v1}, Lbyi;->a(Lbyn;Lbym;)Lbyi;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lbyi;->a()V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
