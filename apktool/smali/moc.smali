.class public final Lmoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    const/16 v0, 0x1bb

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lmoc;->a:Ljava/lang/String;

    .line 55
    iput v0, p0, Lmoc;->b:I

    .line 56
    iput v0, p0, Lmoc;->c:I

    .line 57
    return-void
.end method
