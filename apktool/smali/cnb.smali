.class final Lcnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcnb;",
        ">;"
    }
.end annotation


# static fields
.field private static c:J


# instance fields
.field public final a:J

.field public final b:Lcms;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    sput-wide v0, Lcnb;->c:J

    return-void
.end method

.method public constructor <init>(Lcms;)V
    .locals 4

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {}, Lhbs;->a()V

    .line 212
    sget-wide v0, Lcnb;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcnb;->c:J

    iput-wide v0, p0, Lcnb;->a:J

    .line 213
    iput-object p1, p0, Lcnb;->b:Lcms;

    .line 214
    return-void
.end method


# virtual methods
.method public a(Lcnb;)I
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcnb;->b:Lcms;

    iget v0, v0, Lcms;->a:I

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcnb;->b:Lcms;

    iget v1, v1, Lcms;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcnb;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcnb;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 204
    check-cast p1, Lcnb;

    invoke-virtual {p0, p1}, Lcnb;->a(Lcnb;)I

    move-result v0

    return v0
.end method
