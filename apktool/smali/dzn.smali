.class final Ldzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldzm;


# direct methods
.method constructor <init>(Ldzm;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Ldzn;->a:Ldzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1204
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a()V

    .line 680
    return-void
.end method
