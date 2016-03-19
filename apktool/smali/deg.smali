.class public interface abstract Ldeg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thumbnailUri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contentType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iconUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Ldeg;->a:[Ljava/lang/String;

    return-void
.end method
