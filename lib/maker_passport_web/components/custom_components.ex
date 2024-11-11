defmodule MakerPassportWeb.CustomComponents do
  use Phoenix.Component

  alias MakerPassport.Maker.Profile

  attr :profile, Profile
  attr :size, :integer, default: 16

  def avatar(assigns) do
    # svg_size = round(assigns.size * 0.9)
    ~H"""
    <%= if @profile.profile_image_location && @profile.profile_image_location != "" do %>
      <div class="avatar flex items-center justify-center">
        <div class={"w-#{@size} rounded-full shadow"}>
          <img src={@profile.profile_image_location} alt="#{@profile.name}'s profile image" />
        </div>
      </div>
    <% else %>
      <div class="">
        <svg class={"w-#{@size} w-#{@size}"} viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <title>user-profile-filled</title>
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g id="drop" fill="currentColor" transform="translate(42.666667, 42.666667)">
                    <path d="M213.333333,3.55271368e-14 C269.912851,3.55271368e-14 324.175019,22.4761259 364.18278,62.4838867 C404.190541,102.491647 426.666667,156.753816 426.666667,213.333333 C426.666667,331.15408 331.15408,426.666667 213.333333,426.666667 C95.5125867,426.666667 2.84217094e-14,331.15408 2.84217094e-14,213.333333 C2.84217094e-14,95.5125867 95.5125867,3.55271368e-14 213.333333,3.55271368e-14 Z M234.666667,234.666667 L192,234.666667 C139.18529,234.666667 93.8415802,266.653822 74.285337,312.314895 C105.229171,355.70638 155.977088,384 213.333333,384 C270.689579,384 321.437496,355.70638 352.381644,312.31198 C332.825087,266.653822 287.481377,234.666667 234.666667,234.666667 L234.666667,234.666667 Z M213.333333,64 C177.987109,64 149.333333,92.653776 149.333333,128 C149.333333,163.346224 177.987109,192 213.333333,192 C248.679557,192 277.333333,163.346224 277.333333,128 C277.333333,92.653776 248.679557,64 213.333333,64 Z" id="Combined-Shape">
                    </path>
                </g>
            </g>
        </svg>
      </div>
    <% end %>
    """
  end
end
