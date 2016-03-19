.class public Ldop;
.super Ldox;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldtw;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ldtw;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1581
    invoke-direct {p0, p2, p1}, Ldox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iput-object p3, p0, Ldop;->a:Ljava/util/List;

    .line 1583
    iput-wide p4, p0, Ldop;->b:J

    .line 1584
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1593
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    .line 1595
    iget-object v1, p0, Ldop;->j:Ljava/lang/String;

    .line 1596
    invoke-static {v1}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljzr;->b:Ljava/lang/Long;

    .line 1597
    iget-object v1, p0, Ldop;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Ljzr;->a:Ljxw;

    .line 1599
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljzr;->e:Ljava/lang/Integer;

    .line 1601
    new-instance v4, Ljwu;

    invoke-direct {v4}, Ljwu;-><init>()V

    .line 1602
    iput-object v0, v4, Ljwu;->a:Ljzr;

    .line 1604
    iget-object v0, p0, Ldop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1605
    iget-object v0, p0, Ldop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lkbi;

    move v1, v2

    .line 1606
    :goto_0
    iget-object v0, p0, Ldop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1607
    iget-object v0, p0, Ldop;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtw;

    .line 1608
    iget-object v3, v0, Ldtw;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v0, Ldtw;->e:Ljava/lang/String;

    .line 1609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 2134
    :goto_1
    const-string v6, "Expected condition to be true"

    invoke-static {v6, v3}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 1610
    invoke-virtual {v0}, Ldtw;->d()Lkbi;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1606
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1609
    goto :goto_1

    .line 1612
    :cond_2
    iput-object v5, v4, Ljwu;->b:[Lkbi;

    .line 1614
    :cond_3
    iget-object v0, p0, Ldop;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v4, Ljwu;->requestHeader:Lkdo;

    .line 1617
    return-object v4
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1622
    const-string v0, "conversations/adduser"

    return-object v0
.end method
