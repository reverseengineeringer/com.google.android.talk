.class final Lieg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lifa;


# instance fields
.field final synthetic a:Lied;

.field private final b:Landroid/net/Uri;

.field private final c:J

.field private final d:J

.field private e:J

.field private f:Lidq;


# direct methods
.method public constructor <init>(Lied;Landroid/net/Uri;JJ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 774
    iput-object p1, p0, Lieg;->a:Lied;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-wide v0, p0, Lieg;->e:J

    .line 775
    iput-object p2, p0, Lieg;->b:Landroid/net/Uri;

    .line 776
    iput-wide p3, p0, Lieg;->c:J

    .line 777
    iput-wide v0, p0, Lieg;->d:J

    .line 778
    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    .prologue
    .line 782
    iget-wide v0, p0, Lieg;->e:J

    sub-long v0, p1, v0

    .line 1056
    sget-wide v2, Lied;->a:J

    .line 782
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 783
    iput-wide p1, p0, Lieg;->e:J

    .line 1794
    :try_start_0
    iget-object v0, p0, Lieg;->a:Lied;

    invoke-virtual {v0}, Lied;->b()V
    :try_end_0
    .catch Lidq; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_0
    :goto_0
    iget-wide v0, p0, Lieg;->d:J

    add-long/2addr v0, p1

    cmp-long v0, v0, p3

    if-gez v0, :cond_1

    .line 788
    iget-object v0, p0, Lieg;->a:Lied;

    .line 2056
    iget-object v0, v0, Lied;->b:Lieh;

    .line 788
    iget-wide v2, p0, Lieg;->d:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lieg;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lieh;->a(JJ)V

    .line 790
    :cond_1
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    iput-object v0, p0, Lieg;->f:Lidq;

    .line 1797
    iget-object v0, p0, Lieg;->a:Lied;

    invoke-virtual {v0}, Lied;->a()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lieg;->f:Lidq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lidq;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lieg;->f:Lidq;

    return-object v0
.end method
