.class public final Lbaw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:[B

.field final synthetic c:Lazo;


# direct methods
.method public constructor <init>(Lazo;JLjava/lang/String;Lkmf;)V
    .locals 4

    .prologue
    .line 170
    iput-object p1, p0, Lbaw;->c:Lazo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iget-object v0, p5, Lkmf;->a:Llcf;

    iget-object v0, v0, Llcf;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CallerIdPhone number does not match token data"

    .line 173
    invoke-static {v0, v1}, Laen;->b(ZLjava/lang/Object;)V

    .line 176
    invoke-static {p5}, Llyi;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Lbaw;->b:[B

    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p5, Lkmf;->c:Ljava/lang/Long;

    .line 1051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 178
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p2

    sget-wide v2, Lazu;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lbaw;->a:J

    .line 181
    return-void
.end method
