.class public final Leis;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>([BLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Leis;->a:[B

    .line 13
    iput-object p2, p0, Leis;->b:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Leis;->c:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Leis;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Leis;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Leis;->c:Z

    return v0
.end method
