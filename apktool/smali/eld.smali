.class final Leld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Lelc;


# direct methods
.method constructor <init>(Lelc;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Leld;->a:Lelc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    .line 1015
    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 107
    iget-object v3, p0, Leld;->a:Lelc;

    new-instance v4, Lbyj;

    iget-object v5, p0, Leld;->a:Lelc;

    invoke-virtual {v5}, Lelc;->getActivity()Lba;

    move-result-object v5

    invoke-direct {v4, v5}, Lbyj;-><init>(Landroid/content/Context;)V

    .line 1035
    iput-object v4, v3, Lelc;->d:Lbym;

    .line 110
    iget-object v3, p0, Leld;->a:Lelc;

    .line 2035
    iget-object v3, v3, Lelc;->f:Like;

    .line 110
    if-ne p1, v3, :cond_0

    .line 111
    const/4 v0, 0x2

    .line 116
    :goto_0
    new-instance v3, Lele;

    iget-object v4, p0, Leld;->a:Lelc;

    invoke-direct {v3, v4, v0, v2}, Lele;-><init>(Lelc;IZ)V

    .line 117
    iget-object v0, p0, Leld;->a:Lelc;

    .line 4035
    iget-object v0, v0, Lelc;->d:Lbym;

    .line 117
    invoke-static {v3, v0}, Lbyi;->a(Lbyn;Lbym;)Lbyi;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lbyi;->a()V

    .line 119
    return v1

    .line 113
    :cond_0
    iget-object v3, p0, Leld;->a:Lelc;

    .line 3035
    iget-object v3, v3, Lelc;->e:Like;

    .line 113
    if-ne p1, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Laen;->b(Z)V

    .line 114
    const/4 v0, 0x6

    goto :goto_0
.end method
