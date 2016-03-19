.class public final Leae;
.super Ldyx;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic e:Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;Lbfd;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3849
    iput-object p1, p0, Leae;->e:Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;

    iput-object p3, p0, Leae;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Ldyx;-><init>(Lbfd;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Leff;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3852
    iget-object v0, p0, Leae;->a:Ljava/util/List;

    return-object v0
.end method
