.class public final Lbqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Lbfd;


# direct methods
.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lbqu;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbjb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lbqu;->a:Lbfd;

    iget-object v1, p1, Lbjb;->a:Ljava/lang/String;

    sget-object v2, Lemd;->a:Lemd;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lemd;)V

    .line 57
    iget-object v0, p0, Lbqu;->a:Lbfd;

    iget-object v1, p1, Lbjb;->a:Ljava/lang/String;

    sget-object v2, Lemd;->r:Lemd;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lemd;)V

    .line 59
    return-void
.end method
