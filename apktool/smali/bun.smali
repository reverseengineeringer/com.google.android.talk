.class final Lbun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field final synthetic a:Lbul;

.field final synthetic b:I

.field final synthetic c:Lbum;


# direct methods
.method constructor <init>(Lbum;Lbul;I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lbun;->c:Lbum;

    iput-object p2, p0, Lbun;->a:Lbul;

    iput p3, p0, Lbun;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    if-nez p3, :cond_1

    .line 202
    const-string v0, "Babel_Stickers"

    const-string v1, "Load failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lbun;->a:Lbul;

    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v1

    invoke-virtual {v1}, Leyg;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbul;->c:Ljava/lang/String;

    .line 210
    :cond_2
    invoke-virtual {p4}, Lbhs;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 212
    iget v2, p0, Lbun;->b:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lbun;->a:Lbul;

    iget-object v1, v1, Lbul;->d:Lbuj;

    if-eqz v1, :cond_5

    .line 214
    :cond_3
    const-string v1, "Babel_Stickers"

    const-string v2, "Obsolete update: "

    iget-object v0, p0, Lbun;->a:Lbul;

    iget-object v0, v0, Lbul;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Leys;->b()V

    goto :goto_0

    .line 214
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_5
    iget-object v1, p0, Lbun;->a:Lbul;

    new-instance v2, Lbuj;

    iget-object v3, p0, Lbun;->c:Lbum;

    iget-object v3, v3, Lbum;->a:Lbuh;

    .line 1085
    invoke-direct {v2, v3}, Lbuj;-><init>(Lbuh;)V

    .line 221
    iput-object v2, v1, Lbul;->d:Lbuj;

    .line 222
    iget-object v1, p0, Lbun;->a:Lbul;

    iget-object v1, v1, Lbul;->d:Lbuj;

    iput-object p1, v1, Lbuj;->b:Leys;

    .line 223
    if-eqz p2, :cond_6

    .line 224
    iget-object v1, p0, Lbun;->a:Lbul;

    iget-object v1, v1, Lbul;->d:Lbuj;

    new-instance v2, Lfcd;

    invoke-direct {v2, p2}, Lfcd;-><init>(Lexs;)V

    iput-object v2, v1, Lbuj;->a:Lfcd;

    .line 226
    :cond_6
    iget-object v1, p0, Lbun;->a:Lbul;

    .line 1124
    invoke-static {v0, v1}, Lbum;->a(Landroid/widget/ImageView;Lbul;)V

    goto :goto_0
.end method
