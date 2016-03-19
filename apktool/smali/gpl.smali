.class public final Lgpl;
.super Lfkn;

# interfaces
.implements Lgpw;


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/os/Bundle;

.field private final e:Lgnp;

.field private final f:Lgno;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "qualified_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sort_key_irank"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v_circle_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_viewer_domain"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "given_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "family_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "affinity1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "affinity2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "affinity3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "affinity4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "affinity5"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "people_in_common"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v_emails"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v_phones"

    aput-object v2, v0, v1

    sput-object v0, Lgpl;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;Lgnp;Lgno;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lfkn;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lgpl;->d:Landroid/os/Bundle;

    iput-object p4, p0, Lgpl;->e:Lgnp;

    iput-object p5, p0, Lgpl;->f:Lgno;

    iget-object v0, p0, Lgpl;->d:Landroid/os/Bundle;

    const-string v1, "emails_with_affinities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lgpl;->g:Z

    return-void
.end method


# virtual methods
.method public P_()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lgps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgpl;->f:Lgno;

    const-string v1, "v_emails"

    invoke-virtual {p0, v1}, Lgpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lgpl;->g:Z

    invoke-virtual {v0, v1, v2}, Lgno;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lgpy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgpl;->e:Lgnp;

    const-string v1, "v_phones"

    invoke-virtual {p0, v1}, Lgpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnp;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 3

    const-string v0, "v_circle_ids"

    invoke-virtual {p0, v0}, Lgpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lgpd;->d:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lgpd;->e:Ljava/util/regex/Pattern;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
