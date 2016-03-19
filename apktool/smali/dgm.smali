.class final Ldgm;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Ldgm;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Ldgm;->a:Ldfq;

    .line 1055
    iget v0, v0, Ldfq;->c:I

    .line 172
    const/4 v1, 0x0

    sget-object v2, Lebq;->a:Lebq;

    .line 171
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    .line 175
    return-void
.end method
