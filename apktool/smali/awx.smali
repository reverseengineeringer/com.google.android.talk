.class final Lawx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhzq;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lawx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lawy;

    invoke-direct {v0}, Lawy;-><init>()V

    sput-object v0, Lawx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhqb;)Z
    .locals 1

    .prologue
    .line 1024
    invoke-static {p1}, Lawu;->a(Lhqb;)Z

    move-result v0

    .line 189
    if-nez v0, :cond_0

    const-string v0, "is_sms_account"

    .line 190
    invoke-interface {p1, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
