.class public Ldpi;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1549
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 1550
    iput-wide p2, p0, Ldpi;->a:J

    .line 1551
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    return-object v0
.end method
