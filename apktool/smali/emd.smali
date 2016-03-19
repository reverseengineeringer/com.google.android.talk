.class public final enum Lemd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lemd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lemd;

.field public static final enum b:Lemd;

.field public static final enum c:Lemd;

.field public static final enum d:Lemd;

.field public static final enum e:Lemd;

.field public static final enum f:Lemd;

.field public static final enum g:Lemd;

.field public static final enum h:Lemd;

.field public static final enum i:Lemd;

.field public static final enum j:Lemd;

.field public static final enum k:Lemd;

.field public static final enum l:Lemd;

.field public static final enum m:Lemd;

.field public static final enum n:Lemd;

.field public static final enum o:Lemd;

.field public static final enum p:Lemd;

.field public static final enum q:Lemd;

.field public static final enum r:Lemd;

.field private static final synthetic s:[Lemd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lemd;

    const-string v1, "LOCATION_REQUEST_RECEIVER"

    invoke-direct {v0, v1, v3}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->a:Lemd;

    .line 12
    new-instance v0, Lemd;

    const-string v1, "OUTGOING_USER_MESSAGE"

    invoke-direct {v0, v1, v4}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->b:Lemd;

    .line 13
    new-instance v0, Lemd;

    const-string v1, "INCOMING_USER_MESSAGE"

    invoke-direct {v0, v1, v5}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->c:Lemd;

    .line 14
    new-instance v0, Lemd;

    const-string v1, "CONVERSATION_RENAME"

    invoke-direct {v0, v1, v6}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->d:Lemd;

    .line 15
    new-instance v0, Lemd;

    const-string v1, "MEMBERSHIP_CHANGE_DEPRECATED"

    invoke-direct {v0, v1, v7}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->e:Lemd;

    .line 16
    new-instance v0, Lemd;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->f:Lemd;

    .line 17
    new-instance v0, Lemd;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->g:Lemd;

    .line 18
    new-instance v0, Lemd;

    const-string v1, "HANGOUT_START_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->h:Lemd;

    .line 19
    new-instance v0, Lemd;

    const-string v1, "HANGOUT_STOP_EVENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->i:Lemd;

    .line 20
    new-instance v0, Lemd;

    const-string v1, "OFF_THE_RECORD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->j:Lemd;

    .line 21
    new-instance v0, Lemd;

    const-string v1, "ON_THE_RECORD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->k:Lemd;

    .line 22
    new-instance v0, Lemd;

    const-string v1, "MEMBERSHIP_CHANGE_LEAVE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->l:Lemd;

    .line 23
    new-instance v0, Lemd;

    const-string v1, "MEMBERSHIP_CHANGE_JOIN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->m:Lemd;

    .line 26
    new-instance v0, Lemd;

    const-string v1, "ERROR_FORK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->n:Lemd;

    .line 28
    new-instance v0, Lemd;

    const-string v1, "MEMBERSHIP_CHANGE_LEAVE_FORCE_OTR_CONFLICT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->o:Lemd;

    .line 30
    new-instance v0, Lemd;

    const-string v1, "ERROR_FORCE_OTR_CONFLICT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->p:Lemd;

    .line 32
    new-instance v0, Lemd;

    const-string v1, "SMART_LOCATION_SUGGESTION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->q:Lemd;

    .line 34
    new-instance v0, Lemd;

    const-string v1, "LOCATION_REQUEST_SENDER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lemd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemd;->r:Lemd;

    .line 10
    const/16 v0, 0x12

    new-array v0, v0, [Lemd;

    sget-object v1, Lemd;->a:Lemd;

    aput-object v1, v0, v3

    sget-object v1, Lemd;->b:Lemd;

    aput-object v1, v0, v4

    sget-object v1, Lemd;->c:Lemd;

    aput-object v1, v0, v5

    sget-object v1, Lemd;->d:Lemd;

    aput-object v1, v0, v6

    sget-object v1, Lemd;->e:Lemd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lemd;->f:Lemd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lemd;->g:Lemd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lemd;->h:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lemd;->i:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lemd;->j:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lemd;->k:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lemd;->l:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lemd;->m:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lemd;->n:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lemd;->o:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lemd;->p:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lemd;->q:Lemd;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lemd;->r:Lemd;

    aput-object v2, v0, v1

    sput-object v0, Lemd;->s:[Lemd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lemd;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lemd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lemd;

    return-object v0
.end method

.method public static values()[Lemd;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lemd;->s:[Lemd;

    invoke-virtual {v0}, [Lemd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lemd;

    return-object v0
.end method
