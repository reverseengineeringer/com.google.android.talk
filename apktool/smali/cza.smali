.class public interface abstract Lcza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "chat_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "circle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "full_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fallback_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "participant_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phone_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "batch_gebi_tag"

    aput-object v2, v0, v1

    sput-object v0, Lcza;->a:[Ljava/lang/String;

    return-void
.end method
