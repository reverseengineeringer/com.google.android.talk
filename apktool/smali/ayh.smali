.class final Layh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Layg;


# direct methods
.method constructor <init>(Layg;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Layh;->a:Layg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 52
    iget-object v0, p0, Layh;->a:Layg;

    .line 1123
    iget-object v1, v0, Layg;->a:Lcqr;

    const-string v2, "hangout_app_create"

    iget-object v3, v0, Layg;->b:Ljava/lang/Long;

    .line 2051
    invoke-static {v3, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1123
    invoke-interface {v1, v2, v4, v5}, Lcqr;->a(Ljava/lang/String;J)V

    .line 1126
    iget-object v1, v0, Layg;->a:Lcqr;

    const/4 v2, -0x1

    const-string v3, "hangout_app_create"

    iget-object v0, v0, Layg;->c:Ljava/lang/Long;

    .line 3051
    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1128
    const/16 v6, 0x3f2

    .line 1126
    invoke-interface/range {v1 .. v6}, Lcqr;->a(ILjava/lang/String;JI)V

    .line 53
    return-void
.end method
