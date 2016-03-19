.class final Lbow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;J)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lbow;->b:Lbng;

    iput-wide p2, p0, Lbow;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 4

    .prologue
    .line 677
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p2, Lbpa;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbow;->a:J

    iget-wide v2, p2, Lbpa;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p2, Lbpa;->d:Z

    if-nez v0, :cond_1

    iget v0, p2, Lbpa;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 682
    iget-object v0, p0, Lbow;->b:Lbng;

    .line 1285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 682
    invoke-virtual {p2, v0}, Lbpa;->a(Lbfd;)V

    .line 684
    :cond_1
    return-void
.end method
