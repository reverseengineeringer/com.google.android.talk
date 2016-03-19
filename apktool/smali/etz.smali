.class public final Letz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lerb;


# instance fields
.field final synthetic a:Lhax;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lhax;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Letz;->a:Lhax;

    iput-object p2, p0, Letz;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lerc;)V
    .locals 5

    .prologue
    .line 562
    iget-object v0, p0, Letz;->a:Lhax;

    iget-object v1, p0, Letz;->b:Landroid/content/Context;

    .line 563
    invoke-static {v1}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v1

    .line 1571
    new-instance v2, Lkle;

    invoke-direct {v2}, Lkle;-><init>()V

    .line 1572
    iget v3, p1, Lerc;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lkle;->a:Ljava/lang/Integer;

    .line 1573
    iget-object v3, p1, Lerc;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1574
    iget-object v3, p1, Lerc;->d:Ljava/lang/String;

    iput-object v3, v2, Lkle;->b:Ljava/lang/String;

    .line 1576
    :cond_0
    iget v3, p1, Lerc;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lkle;->d:Ljava/lang/Integer;

    .line 1577
    new-instance v3, Ljum;

    invoke-direct {v3}, Ljum;-><init>()V

    iput-object v3, v2, Lkle;->e:Ljum;

    .line 1578
    iget-object v3, v2, Lkle;->e:Ljum;

    iget v4, p1, Lerc;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Ljum;->c:Ljava/lang/Integer;

    .line 1579
    iget-object v3, v2, Lkle;->e:Ljum;

    iget v1, v1, Leum;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Ljum;->a:Ljava/lang/Integer;

    .line 1580
    iget v1, p1, Lerc;->f:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1581
    iget v1, p1, Lerc;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lkle;->c:Ljava/lang/Integer;

    .line 563
    :cond_1
    invoke-interface {v0, v2}, Lhax;->a(Lkle;)Lhax;

    move-result-object v0

    .line 564
    invoke-interface {v0}, Lhax;->d()V

    .line 565
    return-void
.end method
