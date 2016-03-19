.class final Ldlm;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldll;


# direct methods
.method constructor <init>(Ldll;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ldlm;->a:Ldll;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbfd;Ljava/lang/String;Lczb;Ljava/lang/String;JZ)V
    .locals 7

    .prologue
    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 67
    iget-object v2, p0, Ldlm;->a:Ldll;

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v3

    iget-object v4, p3, Lczb;->a:Ljava/lang/String;

    sget-object v5, Ldnv;->f:Ldnv;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ldll;->a(ILjava/lang/String;Ldnv;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
