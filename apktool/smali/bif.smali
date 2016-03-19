.class final Lbif;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lebi;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lebi;I)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lbif;->a:Lebi;

    iput p2, p0, Lbif;->b:I

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILbfd;Leau;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbif;->a:Lebi;

    invoke-virtual {v0}, Lebi;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 1035
    invoke-static {}, Lbie;->a()V

    .line 159
    :cond_0
    return-void
.end method
