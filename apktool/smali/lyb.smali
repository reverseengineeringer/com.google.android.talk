.class public abstract Llyb;
.super Llyi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Llyb",
        "<TM;>;>",
        "Llyi;"
    }
.end annotation


# instance fields
.field public eD:Llyd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Llyi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llyc;Ljava/lang/Object;)Llyb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llyc",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p1, Llyc;->c:I

    .line 3067
    ushr-int/lit8 v1, v0, 0x3

    .line 106
    const/4 v0, 0x0

    .line 107
    iget-object v2, p0, Llyb;->eD:Llyd;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Llyd;

    invoke-direct {v2}, Llyd;-><init>()V

    iput-object v2, p0, Llyb;->eD:Llyd;

    .line 112
    :goto_0
    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Llyb;->eD:Llyd;

    new-instance v2, Llye;

    invoke-direct {v2, p1, p2}, Llye;-><init>(Llyc;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Llyd;->a(ILlye;)V

    .line 121
    :goto_1
    return-object p0

    .line 110
    :cond_0
    iget-object v0, p0, Llyb;->eD:Llyd;

    invoke-virtual {v0, v1}, Llyd;->a(I)Llye;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0, p1, p2}, Llye;->a(Llyc;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Llyb;->eD:Llyd;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llyb;->eD:Llyd;

    invoke-virtual {v1}, Llyd;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Llyb;->eD:Llyd;

    invoke-virtual {v1, v0}, Llyd;->b(I)Llye;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Llye;->a(Llxz;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Llxy;I)Z
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p1}, Llxy;->r()I

    move-result v0

    .line 141
    invoke-virtual {p1, p2}, Llxy;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 4067
    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    .line 145
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    .line 146
    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Llxy;->a(II)[B

    move-result-object v0

    .line 147
    new-instance v2, Llym;

    invoke-direct {v2, p2, v0}, Llym;-><init>(I[B)V

    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v3, p0, Llyb;->eD:Llyd;

    if-nez v3, :cond_2

    .line 151
    new-instance v3, Llyd;

    invoke-direct {v3}, Llyd;-><init>()V

    iput-object v3, p0, Llyb;->eD:Llyd;

    .line 155
    :goto_1
    if-nez v0, :cond_1

    .line 156
    new-instance v0, Llye;

    invoke-direct {v0}, Llye;-><init>()V

    .line 157
    iget-object v3, p0, Llyb;->eD:Llyd;

    invoke-virtual {v3, v1, v0}, Llyd;->a(ILlye;)V

    .line 159
    :cond_1
    invoke-virtual {v0, v2}, Llye;->a(Llym;)V

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Llyb;->eD:Llyd;

    invoke-virtual {v0, v1}, Llyd;->a(I)Llye;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Llyc;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llyc",
            "<TM;*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Llyb;->eD:Llyd;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v1, p0, Llyb;->eD:Llyd;

    iget v2, p1, Llyc;->c:I

    .line 1067
    ushr-int/lit8 v2, v2, 0x3

    .line 78
    invoke-virtual {v1, v2}, Llyd;->a(I)Llye;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Llyb;->eD:Llyd;

    if-eqz v1, :cond_0

    move v1, v0

    .line 51
    :goto_0
    iget-object v2, p0, Llyb;->eD:Llyd;

    invoke-virtual {v2}, Llyd;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Llyb;->eD:Llyd;

    invoke-virtual {v2, v0}, Llyd;->b(I)Llye;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Llye;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 56
    :cond_1
    return v1
.end method

.method public final b(Llyc;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llyc",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Llyb;->eD:Llyd;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v1, p0, Llyb;->eD:Llyd;

    iget v2, p1, Llyc;->c:I

    .line 2067
    ushr-int/lit8 v2, v2, 0x3

    .line 89
    invoke-virtual {v1, v2}, Llyd;->a(I)Llye;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Llye;->a(Llyc;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Llyb;->j()Llyb;

    move-result-object v0

    return-object v0
.end method

.method public j()Llyb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0}, Llyi;->k()Llyi;

    move-result-object v0

    check-cast v0, Llyb;

    .line 166
    invoke-static {p0, v0}, Llyf;->a(Llyb;Llyb;)V

    .line 167
    return-object v0
.end method

.method public synthetic k()Llyi;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Llyb;->j()Llyb;

    move-result-object v0

    return-object v0
.end method
