.class public final Ldnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkcw;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ldnu;->a:I

    .line 28
    iget-object v0, p1, Lkcw;->b:Ljava/lang/String;

    iput-object v0, p0, Ldnu;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
