.class public interface abstract Lbfs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "call_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "call_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "call_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_free_call"

    aput-object v2, v0, v1

    sput-object v0, Lbfs;->a:[Ljava/lang/String;

    return-void
.end method
