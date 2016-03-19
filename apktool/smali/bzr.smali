.class public final Lbzr;
.super Lbzs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lbzs;-><init>()V

    .line 527
    iput-object p1, p0, Lbzr;->a:Ljava/lang/String;

    .line 528
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lbzr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lbzr;->a:Ljava/lang/String;

    return-object v0
.end method
