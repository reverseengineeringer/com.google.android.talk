.class final Lbop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;Lbfd;)V
    .locals 0

    .prologue
    .line 5929
    iput-object p1, p0, Lbop;->b:Lbng;

    iput-object p2, p0, Lbop;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 5941
    iget-object v0, p0, Lbop;->b:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->bm:Lbzy;

    .line 5941
    invoke-interface {v0}, Lbzy;->a()V

    .line 5942
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 4

    .prologue
    .line 5932
    iget-object v0, p0, Lbop;->a:Lbfd;

    iget-object v1, p0, Lbop;->b:Lbng;

    .line 6285
    iget-wide v2, v1, Lbng;->aW:J

    .line 5932
    invoke-static {v0, p1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;J)I

    .line 5934
    return-void
.end method
