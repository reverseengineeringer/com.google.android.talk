.class public final Lbzt;
.super Lbzs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lbzs;-><init>()V

    .line 505
    iput-object p1, p0, Lbzt;->a:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lbzt;->b:Ljava/lang/String;

    .line 507
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lbzt;->a:Ljava/lang/String;

    return-object v0
.end method
