.class public Ldpl;
.super Ldox;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1687
    invoke-direct {p0, p2, p1}, Ldox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iput-object p3, p0, Ldpl;->a:Ljava/lang/String;

    .line 1689
    iput-object p4, p0, Ldpl;->b:Ljava/lang/String;

    .line 1690
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 1698
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    .line 1700
    iget-object v1, p0, Ldpl;->j:Ljava/lang/String;

    .line 1701
    invoke-static {v1}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljzr;->b:Ljava/lang/Long;

    .line 1702
    iget-object v1, p0, Ldpl;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Ljzr;->a:Ljxw;

    .line 1704
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljzr;->e:Ljava/lang/Integer;

    .line 1706
    new-instance v1, Lkdj;

    invoke-direct {v1}, Lkdj;-><init>()V

    .line 1708
    iget-object v2, p0, Ldpl;->h:Lfak;

    invoke-static {p1, p2, p3, v2}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v2

    iput-object v2, v1, Lkdj;->requestHeader:Lkdo;

    .line 1710
    iget-object v2, p0, Ldpl;->a:Ljava/lang/String;

    iput-object v2, v1, Lkdj;->b:Ljava/lang/String;

    .line 1711
    iput-object v0, v1, Lkdj;->a:Ljzr;

    .line 1713
    return-object v1
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 3

    .prologue
    .line 1723
    invoke-super {p0, p1, p2}, Ldox;->a(Lbfd;Ldvn;)V

    .line 1724
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Ldpl;->c:Ljava/lang/String;

    iget-object v2, p0, Ldpl;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1725
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1718
    const-string v0, "conversations/renameconversation"

    return-object v0
.end method
