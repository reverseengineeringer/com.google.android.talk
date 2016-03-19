.class public Ldph;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 1805
    iput p2, p0, Ldph;->a:I

    .line 1806
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 4

    .prologue
    .line 2205
    sget-boolean v0, Ldoo;->e:Z

    .line 1811
    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Ldph;->c:Ljava/lang/String;

    iget v1, p0, Ldph;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x51

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "setConversationNotificationLevel build protobuf conversationID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1815
    :cond_0
    new-instance v0, Lkeh;

    invoke-direct {v0}, Lkeh;-><init>()V

    .line 1817
    iget-object v1, p0, Ldph;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkeh;->requestHeader:Lkdo;

    .line 1819
    iget-object v1, p0, Ldph;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Lkeh;->a:Ljxw;

    .line 1820
    iget v1, p0, Ldph;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkeh;->b:Ljava/lang/Integer;

    .line 1821
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    const-string v0, "conversations/setconversationnotificationlevel"

    return-object v0
.end method
