.class final Lhxf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lhxf;->a:I

    .line 965
    const/4 v0, 0x3

    iput v0, p0, Lhxf;->b:I

    .line 966
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const/4 v0, 0x4

    iput v0, p0, Lhxf;->b:I

    .line 970
    iput p1, p0, Lhxf;->a:I

    .line 971
    return-void
.end method
