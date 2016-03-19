.class final Lhao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajf;
.implements Lajg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajf",
        "<TT;>;",
        "Lajg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhan;

.field private final b:Lajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajf",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Laja;

.field private final f:Lham;

.field private g:Z

.field private h:Lajg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajg",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private i:Lahs;

.field private volatile j:Z


# direct methods
.method constructor <init>(Lhan;Lajf;Lham;IILaja;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajf",
            "<TT;>;",
            "Lham;",
            "II",
            "Laja;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lhao;->a:Lhan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lhao;->b:Lajf;

    .line 211
    iput p4, p0, Lhao;->c:I

    .line 212
    iput p5, p0, Lhao;->d:I

    .line 213
    iput-object p6, p0, Lhao;->e:Laja;

    .line 214
    iput-object p3, p0, Lhao;->f:Lham;

    .line 215
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lhao;->b:Lajf;

    invoke-interface {v0}, Lajf;->a()V

    .line 227
    return-void
.end method

.method public a(Lahs;Lajg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs;",
            "Lajg",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lhao;->i:Lahs;

    .line 220
    iput-object p2, p0, Lhao;->h:Lajg;

    .line 221
    iget-object v0, p0, Lhao;->b:Lajf;

    invoke-interface {v0, p1, p0}, Lajf;->a(Lahs;Lajg;)V

    .line 222
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    iget-boolean v0, p0, Lhao;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lhao;->g:Z

    if-nez v0, :cond_3

    .line 1261
    instance-of v0, p1, Laiv;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1262
    check-cast v0, Laiv;

    .line 1263
    const/16 v3, 0x193

    invoke-virtual {v0}, Laiv;->a()I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v1

    .line 252
    :goto_0
    if-eqz v0, :cond_3

    .line 253
    iput-boolean v1, p0, Lhao;->g:Z

    .line 1269
    iget-object v0, p0, Lhao;->a:Lhan;

    .line 2028
    iget-object v0, v0, Lhan;->b:La;

    .line 3023
    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1271
    iget-object v0, p0, Lhao;->a:Lhan;

    iget-object v1, p0, Lhao;->f:Lham;

    iget v2, p0, Lhao;->c:I

    iget v3, p0, Lhao;->d:I

    .line 3028
    invoke-virtual {v0, v1, v2, v3}, Lhan;->a(Lham;II)Laot;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lhao;->a:Lhan;

    .line 4028
    iget-object v1, v1, Lhan;->a:Lapg;

    .line 1272
    iget v2, p0, Lhao;->c:I

    iget v3, p0, Lhao;->d:I

    iget-object v4, p0, Lhao;->e:Laja;

    invoke-interface {v1, v0, v2, v3, v4}, Lapg;->a(Ljava/lang/Object;IILaja;)Laph;

    move-result-object v0

    .line 1273
    if-nez v0, :cond_2

    .line 1274
    invoke-virtual {p0, p1}, Lhao;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1263
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1265
    goto :goto_0

    .line 1276
    :cond_2
    iget-object v0, v0, Laph;->c:Lajf;

    .line 1277
    iget-object v1, p0, Lhao;->i:Lahs;

    invoke-interface {v0, v1, p0}, Lajf;->a(Lahs;Lajg;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lhao;->h:Lajg;

    invoke-interface {v0, p1}, Lajg;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lhao;->h:Lajg;

    invoke-interface {v0, p1}, Lajg;->a(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhao;->j:Z

    .line 232
    iget-object v0, p0, Lhao;->b:Lajf;

    invoke-interface {v0}, Lajf;->b()V

    .line 233
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lhao;->b:Lajf;

    invoke-interface {v0}, Lajf;->c()Lair;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lhao;->b:Lajf;

    invoke-interface {v0}, Lajf;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
