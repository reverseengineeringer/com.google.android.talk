.class public Ldpk;
.super Ldox;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Lczb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1634
    invoke-direct {p0, p2, p1}, Ldox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const/4 v0, 0x0

    iput-object v0, p0, Ldpk;->a:Lczb;

    .line 1636
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    .line 2205
    sget-boolean v0, Ldoo;->e:Z

    .line 1646
    if-eqz v0, :cond_0

    .line 1647
    const-string v0, "RemoveUserRequest build protobuf convID: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldpk;->c:Ljava/lang/String;

    iget-object v2, p0, Ldpk;->j:Ljava/lang/String;

    iget-object v3, p0, Ldpk;->a:Lczb;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clientGeneratedId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " participantId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    :cond_0
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    .line 1654
    iget-object v1, p0, Ldpk;->j:Ljava/lang/String;

    .line 1655
    invoke-static {v1}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljzr;->b:Ljava/lang/Long;

    .line 1656
    iget-object v1, p0, Ldpk;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Ljzr;->a:Ljxw;

    .line 1658
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljzr;->e:Ljava/lang/Integer;

    .line 1661
    new-instance v1, Lkdh;

    invoke-direct {v1}, Lkdh;-><init>()V

    .line 1662
    iput-object v0, v1, Lkdh;->a:Ljzr;

    .line 1663
    iget-object v0, p0, Ldpk;->a:Lczb;

    if-eqz v0, :cond_3

    .line 1664
    iget-object v0, p0, Ldpk;->a:Lczb;

    .line 3095
    new-instance v2, Lkcr;

    invoke-direct {v2}, Lkcr;-><init>()V

    .line 3096
    iget-object v3, v0, Lczb;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3097
    iget-object v3, v0, Lczb;->a:Ljava/lang/String;

    iput-object v3, v2, Lkcr;->b:Ljava/lang/String;

    .line 3099
    :cond_1
    iget-object v3, v0, Lczb;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3100
    iget-object v0, v0, Lczb;->b:Ljava/lang/String;

    iput-object v0, v2, Lkcr;->a:Ljava/lang/String;

    .line 1664
    :cond_2
    iput-object v2, v1, Lkdh;->b:Lkcr;

    .line 1666
    :cond_3
    iget-object v0, p0, Ldpk;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v1, Lkdh;->requestHeader:Lkdo;

    .line 1669
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1674
    const-string v0, "conversations/removeuser"

    return-object v0
.end method
