.class final Lddc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2067
    new-instance v0, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;-><init>()V

    .line 64
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1072
    new-array v0, p1, [Lcom/google/android/apps/hangouts/phone/AccountSelectionActivity;

    .line 64
    return-object v0
.end method
